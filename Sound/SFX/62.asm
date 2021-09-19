Jump_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Jump_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM3, Jump_FM1,	$EA, $09
	smpsHeaderSFXChannel cPSG1, Sound_62_PSG1,	$00, $00

; FM1 Data
Jump_FM1:
	smpsSetvoice        $00
	smpsFMAlterVol      $05
	dc.b	nF3, $04
	smpsFMAlterVol      $FB
	smpsModSet          $02, $01, $34, $FF
	dc.b	nBb3, $15
	smpsStop

; PSG1 Data
Sound_62_PSG1:
	smpsPSGvoice        sTone_0D
	dc.b	nF2, $05
	smpsModSet          $02, $01, $F8, $65
	dc.b	nBb2, $15
	smpsStop

Jump_Voices:
;	Voice $00
;	$0C
;	$08, $08, $08, $08, 	$1F, $1F, $1F, $1F, 	$00, $0A, $00, $0A
;	$00, $00, $00, $0A, 	$FF, $FF, $FF, $FF, 	$55, $81, $33, $81
	smpsVcAlgorithm     $04
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $08, $08, $08, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $0A, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $81, $33, $81, $55

