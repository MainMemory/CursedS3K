using IniFile;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;

namespace musictool
{
	static class Program
	{
		static byte[] GetTextFileBytes(string path)
		{
			// reads a text file and outputs a string that line endings normalized to \n
			string[] lines = File.ReadAllLines(path, Encoding.Default);
			using(MemoryStream ms = new MemoryStream())
			{
				for (int i = 0; i < lines.Length; i ++)
				{
					byte[] line = Encoding.Default.GetBytes(lines[i] + '\n');
					ms.Write(line, 0, line.Length);
				}
				return ms.ToArray();
			}
		}

		static string GetFileHash(System.Security.Cryptography.HashAlgorithm hashAlgo, string path, bool isText)
		{
			byte[] fileData = isText ? GetTextFileBytes(path) : File.ReadAllBytes(path);
			byte[] hashbytes = hashAlgo.ComputeHash(fileData);
			string hashstr = string.Empty;
			foreach (byte b in hashbytes)
				hashstr += b.ToString("x2");
			return hashstr;
		}

		static void Main(string[] args)
		{
			bool clean = args.Length > 0 && args[0].Equals("/clean", StringComparison.OrdinalIgnoreCase);
			if (clean)
				Console.WriteLine("Performing clean build of music data.");
			var dacs = IniSerializer.Deserialize<Dictionary<string, DACInfo>>("Sound/DAC/DAC.ini");
			if (dacs.Count > 96)
				Console.WriteLine("Warning: You have {0} DAC samples, but SMPS can only use 96!", dacs.Count);
			int dacheadsize = dacs.Count * 7;
			var samples = new List<KeyValuePair<string, int>>();
			foreach (var item in dacs.Select(a => a.Value.File).Distinct())
				samples.Add(new KeyValuePair<string, int>(item, (int)new FileInfo(Path.Combine("Sound/DAC", item)).Length));
			List<int> dacbanksizes = new List<int>() { dacheadsize };
			List<List<string>> dacbanks = new List<List<string>> { new List<string>() };
			foreach (var item in samples.OrderByDescending(a => a.Value))
			{
				bool found = false;
				for (int bank = 0; bank < dacbanksizes.Count; bank++)
					if (dacbanksizes[bank] + item.Value <= 0x8000)
					{
						dacbanks[bank].Add(item.Key);
						dacbanksizes[bank] += item.Value;
						found = true;
						break;
					}
				if (!found)
				{
					dacbanks.Add(new List<string>() { item.Key });
					dacbanksizes.Add(item.Value + dacheadsize);
				}
			}
			var samplenums = new Dictionary<string, string>();
			using (StreamWriter sw = new StreamWriter("dacsamples.gen.asm", false, Encoding.ASCII))
			{
				for (int b = 0; b < dacbanks.Count; b++)
				{
					sw.WriteLine("DacBank{0}:\tstartBank", b + 1);
					sw.WriteLine("\tDAC_Master_Table");
					sw.WriteLine();
					foreach (string item in dacbanks[b])
					{
						string label = Path.GetFileNameWithoutExtension(item).Replace(' ', '_').Replace('-', '_');
						samplenums.Add(item, label);
						sw.WriteLine("DAC_{0}_Data:\tDACBINCLUDE \"sound/DAC/{1}\"", label, item);
					}
					sw.WriteLine();
					sw.WriteLine("\tfinishBank");
					sw.WriteLine();
				}
			}
			List<string> dacids = new List<string>(dacs.Count);
			using (StreamWriter sw = new StreamWriter("dacinfo.gen.asm", false, Encoding.ASCII))
			{
				sw.WriteLine("DAC_Master_Table macro");
				sw.WriteLine("\tifndef DACPointers");
				sw.WriteLine("DACPointers label *");
				sw.WriteLine("\telseif (DACPointers&$7FFF)<>((*)&$7FFF)");
				sw.WriteLine("\t\tfatal \"Inconsistent placement of DAC_Master_Table macro on bank \\{soundBankName}\"");
				sw.WriteLine("\tendif");
				sw.WriteLine();
				foreach (var item in dacs)
				{
					sw.WriteLine("\tDAC_Setup\t{0},DAC_{1}_Data ; {2}", item.Value.Rate, samplenums[item.Value.File], item.Key);
					dacids.Add(item.Key);
				}
				sw.WriteLine("\tendm");
			}
			using (StreamWriter sw = new StreamWriter("dacbanks.gen.asm", false, Encoding.ASCII))
			{
				sw.WriteLine("\tdb\tzmake68kBank(DacBank1)");
				foreach (var item in dacs)
					sw.WriteLine("\tdb\tzmake68kBank(DAC_{0}_Data)", samplenums[item.Value.File]);
			}
			using (StreamWriter sw = new StreamWriter("dacids.gen.asm", false, Encoding.ASCII))
			{
				string last = "$81";
				for (int i = 0; i < dacids.Count; i++)
				{
					if (i % 7 == 0)
						sw.Write("\tenum {0}={1}", dacids[i], last);
					else
						sw.Write(",{0}", dacids[i]);
					if (i % 7 == 6)
					{
						sw.WriteLine();
						last = dacids[i] + "+1";
					}
				}
			}
			using (StreamWriter sw = new StreamWriter("tmp.asm", false, Encoding.ASCII))
			{
				sw.WriteLine("\tCPU 68000");
				sw.WriteLine("\tpadding off");
				sw.WriteLine("SonicDriverVer = 5");
				sw.WriteLine("\tinclude \"sonic3k.macros.asm\"");
				sw.WriteLine("\tinclude \"Sound/_smps2asm_inc.asm\"");
				sw.WriteLine("\tinclude \"Sound/UniBank.asm\"");
			}
			ProcessStartInfo _si = new ProcessStartInfo("AS/Win32/asw", "-E -xx -A -r 2 -q -U tmp.asm")
			{
				CreateNoWindow = true
			};
			_si.EnvironmentVariables.Add("AS_MSGPATH", "AS/Win32");
			_si.EnvironmentVariables.Add("USEANSI", "n");
			_si.UseShellExecute = false;
			using (Process proc = Process.Start(_si))
				proc.WaitForExit();
			File.Delete("tmp.asm");
			if (File.Exists("tmp.log"))
			{
				Console.Write(File.ReadAllText("tmp.log"));
				File.Delete("tmp.log");
			}
			_si = new ProcessStartInfo("AS/Win32/fdp2bin", "tmp.p tmp.bin")
			{
				CreateNoWindow = true,
				UseShellExecute = false
			};
			using (Process proc = Process.Start(_si))
				proc.WaitForExit();
			File.Delete("tmp.p");
			short uvbsize = (short)new FileInfo("tmp.bin").Length;
			File.Delete("tmp.bin");
			var songs = IniSerializer.Deserialize<Dictionary<string, MusicInfo>>("Sound/Music/Music.ini");
			bool writeini = false;
			System.Security.Cryptography.MD5 md5hasher = System.Security.Cryptography.MD5.Create();
			foreach (var item in songs)
			{
				switch (Path.GetExtension(item.Value.File).ToLowerInvariant())
				{
					case ".asm":
					case ".68k":
						string md5 = GetFileHash(md5hasher, Path.Combine("sound/music", item.Value.File), true);
						if (clean || item.Value.MD5 != md5 || item.Value.Size <= 0)
						{
							Console.WriteLine("Building song \"{0}\"...", item.Value.Title ?? item.Key);
							using (StreamWriter sw = new StreamWriter("tmp.asm", false, Encoding.ASCII))
							{
								sw.WriteLine("\tCPU 68000");
								sw.WriteLine("\tpadding off");
								sw.WriteLine("SonicDriverVer = 5");
								sw.WriteLine("z80_UniVoiceBank = 0");
								if (item.Value.ExtData != null && item.Value.ExtData.Length > 0)
									foreach (var dat in item.Value.ExtData)
										sw.WriteLine("{0} = 0", dat);
								sw.WriteLine("\tinclude \"sonic3k.macros.asm\"");
								sw.WriteLine("\tinclude \"Sound/_smps2asm_inc.asm\"");
								sw.WriteLine("\tinclude \"Sound/Music/{0}\"", item.Value.File);
							}
							ProcessStartInfo si = new ProcessStartInfo("AS/Win32/asw", "-E -xx -A -r 2 -q -U tmp.asm")
							{
								CreateNoWindow = true
							};
							si.EnvironmentVariables.Add("AS_MSGPATH", "AS/Win32");
							si.EnvironmentVariables.Add("USEANSI", "n");
							si.UseShellExecute = false;
							using (Process proc = Process.Start(si))
								proc.WaitForExit();
							File.Delete("tmp.asm");
							if (File.Exists("tmp.log"))
							{
								Console.Write(File.ReadAllText("tmp.log"));
								File.Delete("tmp.log");
							}
							if (!File.Exists("tmp.p")) continue;
							si = new ProcessStartInfo("AS/Win32/fdp2bin", "tmp.p tmp.bin")
							{
								CreateNoWindow = true,
								UseShellExecute = false
							};
							using (Process proc = Process.Start(si))
								proc.WaitForExit();
							File.Delete("tmp.p");
							if (!File.Exists("tmp.bin")) continue;
							item.Value.Size = (short)new FileInfo("tmp.bin").Length;
							item.Value.MD5 = md5;
							File.Delete("tmp.bin");
							writeini = true;
						}
						break;
					case ".bin":
						short size = (short)new FileInfo(Path.Combine("sound/music", item.Value.File)).Length;
						//string md5 = GetFileHash(md5hasher, Path.Combine("sound/music", item.Value.File), false);
						if (item.Value.Size != size)
						{
							item.Value.Size = size;
							writeini = true;
						}
						break;
				}
			}
			if (writeini)
				IniSerializer.Serialize(songs, "sound/music/music.ini");
			Dictionary<string, string> musicfiles = new Dictionary<string, string>();
			int musheadsize = songs.Count * 2 + uvbsize;
			List<int> banksizes = new List<int>() { musheadsize };
			List<List<KeyValuePair<string, MusicInfo>>> banks = new List<List<KeyValuePair<string, MusicInfo>>>() { new List<KeyValuePair<string, MusicInfo>>() };
			foreach (var item in songs.OrderByDescending(a => a.Value.Size))
			{
				if (musicfiles.ContainsKey(item.Value.File)) continue;
				musicfiles.Add(item.Value.File, item.Key);
				bool found = false;
				for (int i = 0; i < banks.Count; i++)
					if (banksizes[i] + item.Value.Size <= 0x8000)
					{
						banks[i].Add(item);
						banksizes[i] += item.Value.Size;
						found = true;
						break;
					}
				if (!found)
				{
					banks.Add(new List<KeyValuePair<string, MusicInfo>>() { item });
					banksizes.Add(item.Value.Size + musheadsize);
				}
			}
			using (StreamWriter sw = new StreamWriter("musicdata.gen.asm", false, Encoding.ASCII))
			{
				for (int i = 0; i < banks.Count; i++)
				{
					sw.WriteLine("; ------------------------------------------------------------------------------");
					sw.WriteLine("; Music bank {0}", i + 1);
					sw.WriteLine("; ------------------------------------------------------------------------------");
					sw.WriteLine("Mus_Bank{0}_Start:\tstartBank", i + 1);
					sw.WriteLine("\tMusic_Master_Table");
					if (i == 0)
						sw.Write("z80_UniVoiceBank:");
					sw.WriteLine("\tinclude \"Sound/UniBank.asm\" ; {0:X} bytes", uvbsize);
					foreach (var item in banks[i])
						switch (Path.GetExtension(item.Value.File).ToLowerInvariant())
						{
							case ".asm":
							case ".68k":
								sw.WriteLine("MusData_{0}:\tinclude \"Sound/Music/{1}\" ; ${2:X} bytes", item.Key, item.Value.File, item.Value.Size);
								break;
							case ".bin":
								sw.WriteLine("MusData_{0}:\tBINCLUDE \"Sound/Music/{1}\" ; ${2:X} bytes", item.Key, item.Value.File, item.Value.Size);
								break;
						}
					sw.WriteLine();
					sw.WriteLine("\tfinishBank");
					sw.WriteLine();
				}
			}
			using (StreamWriter sw = new StreamWriter("musicinfo.gen.asm", false, Encoding.ASCII))
			{
				sw.WriteLine("Music_Master_Table macro");
				sw.WriteLine("\tifndef MusicPointers");
				sw.WriteLine("MusicPointers label *");
				sw.WriteLine("\telseif (MusicPointers&$7FFF)<>((*)&$7FFF)");
				sw.WriteLine("\t\tfatal \"Inconsistent placement of Music_Master_Table macro on bank \\{soundBankName}\"");
				sw.WriteLine("\tendif");
				foreach (var item in songs)
					sw.WriteLine("\tdeclsong\tMusData_{0}", musicfiles[item.Value.File]);
				sw.WriteLine("\tifndef zMusIDPtr__End");
				sw.WriteLine("zMusIDPtr__End label *");
				sw.WriteLine("\tendif");
				sw.WriteLine("\tendm");
			}
			using (StreamWriter sw = new StreamWriter("musicbanks.gen.asm", false, Encoding.ASCII))
			{
				foreach (var item in songs)
					sw.WriteLine("\tdb\tzmake68kBank(MusData_{0})", musicfiles[item.Value.File]);
			}
			using (StreamWriter sw = new StreamWriter("musicids.gen.asm", false, Encoding.ASCII))
			{
				List<string> musids = new List<string>(songs.Keys);
				sw.WriteLine("\tphase $01");
				sw.WriteLine("Mus__First = *");
				for (int i = 0; i < musids.Count; i++)
					sw.WriteLine("Mus_{0}\tds.b\t1 ; ${1:X2}", musids[i], i + 1);
				sw.WriteLine("Mus__End = *");
			}
			/*using (StreamWriter sw = new StreamWriter("musicnames.gen.asm", false, Encoding.ASCII))
			{
				sw.WriteLine("SongNames:\toffsetTable");
				sw.WriteLine("\toffsetTableEntry.w\tMusNam_Null");
				foreach (var item in songs)
					sw.WriteLine("\toffsetTableEntry.w\tMusNam_{0}", item.Key);
				sw.WriteLine();
				sw.WriteLine("MusNam_Null:\tdc.b 0,' '");
				foreach (var item in songs)
					sw.WriteLine("MusNam_{0}:\tsongtext\t\"{1}\"", item.Key, item.Value.Title.ToUpperInvariant());
				sw.WriteLine("\teven");
			}*/
		}
	}

	class MusicInfo
	{
		public string Title { get; set; }
		public string Author { get; set; }
		public string File { get; set; }
		[IniCollection(IniCollectionMode.SingleLine, Format = ",")]
		public string[] ExtData { get; set; }
		public short Size { get; set; }
		public string MD5 { get; set; }
	}

	class DACInfo
	{
		public string File { get; set; }
		public string Rate { get; set; }
	}
}
