Snd_SCDSSU_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Snd_SCDSSU_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $03

	smpsHeaderDAC       Snd_SCDSSU_DAC
	smpsHeaderFM        Snd_SCDSSU_FM1,	$00, $0A
	smpsHeaderFM        Snd_SCDSSU_FM2,	$00, $12
	smpsHeaderFM        Snd_SCDSSU_FM3,	$00, $1A
	smpsHeaderFM        Snd_SCDSSU_FM4,	$00, $42
	smpsHeaderFM        Snd_SCDSSU_FM5,	$00, $42
	smpsHeaderPSG       Snd_SCDSSU_PSG1,	$00, $04, $00, $00
	smpsHeaderPSG       Snd_SCDSSU_PSG2,	$00, $04, $00, $00
	smpsHeaderPSG       Snd_SCDSSU_PSG3,	$00, $05, $00, fTone_02

; DAC Data
Snd_SCDSSU_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $02, dCrashCymbal, $0C, dKickS3

Snd_SCDSSU_Loop00:
	dc.b	$04, dSnareS3, $08, dKickS3, dKickS3, $10, dSnareS3, dKickS3, $0C
	smpsLoop            $00, $03, Snd_SCDSSU_Loop00
	dc.b	$04, dSnareS3, $08, dKickS3, dKickS3, $10, dSnareS3

Snd_SCDSSU_Jump00:
	dc.b	dKickS3, $0C
	smpsLoop            $01, $02, Snd_SCDSSU_Loop00

Snd_SCDSSU_Loop01:
	dc.b	$04, dSnareS3, $08, dKickS3, dKickS3, $10, dSnareS3, dKickS3, $0C
	smpsLoop            $00, $03, Snd_SCDSSU_Loop01
	dc.b	$04, dSnareS3, $08, dKickS3, dKickS3, dSnareS3, $04, $04, $08, $08

Snd_SCDSSU_Loop02:
	dc.b	dKickS3, $0C, $04, dSnareS3, $08, dKickS3, dKickS3, $10, dSnareS3
	smpsLoop            $00, $08, Snd_SCDSSU_Loop02
	dc.b	dCrashCymbal, $0C, dKickS3

Snd_SCDSSU_Loop03:
	dc.b	$04, dSnareS3, $08, dKickS3, dKickS3, $10, dSnareS3, dKickS3, $0C
	smpsLoop            $00, $03, Snd_SCDSSU_Loop03
	dc.b	$04, dSnareS3, $08, dKickS3, dKickS3, dKickS3, dSnareS3, dKickS3, dCrashCymbal, $0C, dKickS3

Snd_SCDSSU_Loop04:
	dc.b	$04, dSnareS3, $08, dKickS3, dKickS3, $10, dSnareS3, dKickS3, $0C
	smpsLoop            $00, $07, Snd_SCDSSU_Loop04
	dc.b	$04, dSnareS3, $08, dKickS3, dKickS3, $10, dSnareS3

Snd_SCDSSU_Loop05:
	dc.b	dCrashCymbal, $18, dKickS3, $08, dSnareS3, $18, dKickS3, $20, $08, dSnareS3, $20, dKickS3
	dc.b	$18, $08, dSnareS3, $18, dKickS3, $20, $08, dSnareS3, $20
	smpsLoop            $00, $02, Snd_SCDSSU_Loop05
	dc.b	dCrashCymbal, $18, dKickS3, $08, dSnareS3, $18, dKickS3, $20, $08, dSnareS3, $18, $08
	dc.b	dKickS3, $10, $10, dSnareS3, $18, dKickS3, dKickS3, $08, $04, $04, dSnareS3, $20
	dc.b	dKickS3, $18, $08, dSnareS3, $18, dKickS3, dKickS3, $08, $08, dSnareS3, $20, dKickS3
	dc.b	$18, $04, $04, dSnareS3, $20, dKickS3, $10, dSnareS3, dKickS3, $08, $08, dSnareS3
	dc.b	$10, dCrashCymbal, $0C, dKickS3

Snd_SCDSSU_Loop06:
	dc.b	$04, dSnareS3, $08, dKickS3, dKickS3, $10, dSnareS3, dKickS3, $0C
	smpsLoop            $00, $03, Snd_SCDSSU_Loop06
	dc.b	$04, dSnareS3, $08, dKickS3, dKickS3, $10, dSnareS3
	smpsJump            Snd_SCDSSU_Jump00

; FM1 Data
Snd_SCDSSU_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nG2, $7F, smpsNoAttack, $61, nRst, $20
	smpsAlterVol        $03
	dc.b	nG2, $08, nRst, $04, nG2, nRst, $08, nF2, $04, nRst, nG2, $0C
	dc.b	nRst, $1C, nG2, $04, nRst, nF2, $08, nG2, $04, nRst, nC3, $10
	dc.b	nBb2, nG2, $08, nRst, $04, nG2, nRst, $08, nF2, $04, nRst, nG2
	dc.b	$0C, nRst, $1C, nF2, $04, nRst, nG2, $08, nF2, $04, nRst, nC2
	dc.b	$10, nD2

Snd_SCDSSU_Jump05:
	dc.b	nG2, $08, nRst, $04, nG2, nRst, $08, nF2, $04, nRst, nG2, $0C
	dc.b	nRst, $1C, nG2, $04, nRst, nF2, $08, nG2, $04, nRst, nC3, $10
	dc.b	nBb2, nG2, $08, nRst, $04, nG2, nRst, $08, nF2, $04, nRst, nG2
	dc.b	$0C, nRst, $1C, nF2, $04, nRst, nG2, $08, nF2, $04, nRst, nC2
	dc.b	$10, nD2, nBb2, $08, nRst, $04, nBb2, nRst, $08, nC3, $04, nRst
	dc.b	nBb2, $0C, nRst, $1C, nBb2, $04, nRst, nC3, $08, nBb2, $04, nRst
	dc.b	nF2, $10, nG2, nBb2, $08, nRst, $04, nBb2, nRst, $08, nC3, $04
	dc.b	nRst, nBb2, $0C, nRst, $1C, nBb2, $04, nRst, nC3, $08, nBb2, $04
	dc.b	nRst, nD3, $10, nC3, nG2, $08, nRst, $04, nG2, nRst, $08, nF2
	dc.b	$04, nRst, nG2, $0C, nRst, $1C, nG2, $04, nRst, nF2, $08, nG2
	dc.b	$04, nRst, nC3, $10, nBb2, nG2, $08, nRst, $04, nG2, nRst, $08
	dc.b	nF2, $04, nRst, nG2, $0C, nRst, $1C, nF2, $04, nRst, nG2, $08
	dc.b	nF2, $04, nRst, nC2, $10, nD2, nG2, $08, nRst, $04, nG2, nRst
	dc.b	$08, nF2, $04, nRst, nG2, $0C, nRst, $1C, nG2, $04, nRst, nF2
	dc.b	$08, nG2, $04, nRst, nC3, $10, nBb2, nG2, $08, nRst, $04, nG2
	dc.b	nRst, $08, nF2, $04, nRst, nG2, $0C, nRst, $1C, nF2, $04, nRst
	dc.b	nG2, $08, nF2, $04, nRst, nG2, $10, nRst, nC2, $08, nRst, $04
	dc.b	nC2, nRst, $28, nC3, $08, nC2, nRst, $04, nC2, nRst, $10, nC2
	dc.b	$08, nRst, nC3, nC2, nD2, nRst, $04, nD2, nRst, $28, nD3, $08
	dc.b	nD2, nRst, $04, nD2, nD2, $10, nE2, nFs2, nG2, $08, nRst, $04
	dc.b	nG2, nRst, $08, nF2, $04, nRst, nG2, $0C, nRst, $1C, nF2, $04
	dc.b	nRst, nG2, $08, nF2, $04, nRst, nC3, $10, nBb2, nG2, $08, nRst
	dc.b	$04, nG2, nRst, $08, nF2, $04, nRst, nG2, $0C, nRst, $1C, nF2
	dc.b	$04, nRst, nG2, $08, nF2, $04, nRst, nC2, $10, nD2, nG2, $08
	dc.b	nRst, $04, nG2, nRst, $08, nF2, $04, nRst, nG2, $0C, nRst, $1C
	dc.b	nF2, $04, nRst, nG2, $08, nF2, $04, nRst, nC3, $10, nBb2, nG2
	dc.b	$08, nRst, $04, nG2, nRst, $08, nF2, $04, nRst, nG2, $0C, nRst
	dc.b	$1C, nF2, $04, nRst, nG2, $08, nF2, $04, nRst, nG2, $10, nRst
	dc.b	nF2, $08, nRst, $04, nF2, $08, nRst, $04, nEb2, $08, nF2, $0C
	dc.b	nRst, $2C, nC2, $08, nEb2, $10, $10

Snd_SCDSSU_Loop75:
	dc.b	nF2, $08, nRst, $04, nF2, $08, nRst, $04, nEb2, $08, nF2, $0C
	dc.b	nRst, $2C, nF2, $04, nRst, nC2, $10, nEb2
	smpsLoop            $00, $02, Snd_SCDSSU_Loop75
	dc.b	nF2, $08, nRst, $04, nF2, $08, nRst, $04, nEb2, $08, nF2, $0C
	dc.b	nRst, $1C, nF2, $04, nRst, $0C, nF2, $08, nC2, $10, nF2, nG2
	dc.b	$08, nRst, $04, nG2, $08, nRst, $04, nF2, $08, nG2, nRst, $10
	dc.b	nD2, $04, nRst, nG2, $08, nRst, $04, nG2, $08, nRst, $04, nF2
	dc.b	$08, nG2, nRst, nD2, nF2, $04, nRst

Snd_SCDSSU_Loop76:
	dc.b	nG2, $08, nRst, $04, nG2, $08, nRst, $04, nF2, $08, nG2, nRst
	dc.b	$18, nG2, $08, nRst, $04, nG2, $08, nRst, $04, nF2, $08, nG2
	dc.b	nD2, nF2, $10
	smpsLoop            $00, $02, Snd_SCDSSU_Loop76
	dc.b	nG2, $08, nRst, $04, nG2, $08, nRst, $04, nF2, $08, nG2, nRst
	dc.b	$18, nBb2, $10, nC3, nD3, nC3, nG2, $08, nRst, $04, nG2, nRst
	dc.b	$08, nF2, $04, nRst, nG2, $0C, nRst, $1C, nG2, $04, nRst, nF2
	dc.b	$08, nG2, $04, nRst, nC3, $10, nBb2, nG2, $08, nRst, $04, nG2
	dc.b	nRst, $08, nF2, $04, nRst, nG2, $0C, nRst, $1C, nF2, $04, nRst
	dc.b	nG2, $08, nF2, $04, nRst, nC2, $10, nD2
	smpsJump            Snd_SCDSSU_Jump05

; FM2 Data
Snd_SCDSSU_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nG0, $7F, smpsNoAttack, $61, nRst, $20, nG0, $7F, smpsNoAttack, $7F, smpsNoAttack, $02
	smpsSetvoice        $04
	smpsPan             panLeft, $00

Snd_SCDSSU_Jump04:
	smpsAlterVol        $03
	dc.b	nD5, $40
	smpsAlterVol        $F9
	dc.b	$30, nF5, $10, nE5, nC5, nD5, $60
	smpsAlterVol        $07
	dc.b	$40
	smpsAlterVol        $F9
	dc.b	$30, nF5, $10, nE5, nC5, nD5, $40, nC5, $10, nD5, nG4, $7F
	dc.b	smpsNoAttack, $01, nRst, $7F, $01
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsAlterVol        $04
	dc.b	nG0, $7F, smpsNoAttack, $41, nRst, $40
	smpsSetvoice        $05
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	dc.b	nD4, nC4, nBb3, $60, $20, nG3, $7F, smpsNoAttack, $01
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	smpsAlterVol        $04
	dc.b	nG0, $7F, smpsNoAttack, $7F, smpsNoAttack, $02, nRst, $7F, $01
	smpsSetvoice        $06
	smpsPan             panLeft, $00
	smpsAlterVol        $04
	dc.b	nF2, $40, nEb2, nD2, nEb2, nF2, nEb2, nD2, nEb2, $20, nD2, $10
	dc.b	nEb2, nG2, $40, nF2, nE2, nF2, nG2, nF2, nE2, nF2, nG2, $7F
	dc.b	smpsNoAttack, $31, nRst, $50
	smpsSetvoice        $04
	smpsAlterVol        $FC
	smpsJump            Snd_SCDSSU_Jump04

; FM3 Data
Snd_SCDSSU_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nG3, $7F, smpsNoAttack, $61, nRst, $7F, $7F, $22

Snd_SCDSSU_Jump03:
	dc.b	nRst, $04
	smpsSetvoice        $04
	smpsPan             panRight, $00
	smpsAlterNote       $F9
	smpsAlterVol        $03
	dc.b	nD5, $40
	smpsAlterVol        $FA
	dc.b	$30, nF5, $10, nE5, nC5, nD5, $60
	smpsAlterVol        $06
	dc.b	$40
	smpsAlterVol        $FA
	dc.b	$30, nF5, $10, nE5, nC5, nD5, $40, nC5, $10, nD5, nG4, $7F
	dc.b	smpsNoAttack, $01, nRst, $7F, $7F, $7F, $03
	smpsSetvoice        $05
	smpsAlterVol        $FF
	dc.b	nD4, $40, nC4, nBb3, $60, $20, nG3, $7F, smpsNoAttack, $01, nRst, $7F
	dc.b	$7F, $7E
	smpsSetvoice        $06
	smpsAlterNote       $00
	dc.b	nC2, $40, nBb1, nBb1, nBb1, nC2, nBb1, nBb1, nBb1, nD2, nC2, nC2
	dc.b	nC2, nD2, nC2, nC2, nC2, nD2, $7F, smpsNoAttack, $31, nRst, $50
	smpsAlterVol        $04
	smpsJump            Snd_SCDSSU_Jump03

; FM4 Data
Snd_SCDSSU_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nRst

Snd_SCDSSU_Loop3E:
	dc.b	$40
	smpsLoop            $00, $08, Snd_SCDSSU_Loop3E

Snd_SCDSSU_Jump02:
	dc.b	nRst

Snd_SCDSSU_Loop3F:
	dc.b	$40
	smpsLoop            $00, $08, Snd_SCDSSU_Loop3F
	dc.b	nG3, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE

Snd_SCDSSU_Loop40:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsLoop            $00, $09, Snd_SCDSSU_Loop40
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop41:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $03, Snd_SCDSSU_Loop41
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FE

Snd_SCDSSU_Loop42:
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	smpsLoop            $00, $03, Snd_SCDSSU_Loop42
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop43:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, Snd_SCDSSU_Loop43
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop44:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $03, Snd_SCDSSU_Loop44
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $46
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

Snd_SCDSSU_Loop45:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $02, Snd_SCDSSU_Loop45

Snd_SCDSSU_Loop46:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop46

Snd_SCDSSU_Loop47:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, Snd_SCDSSU_Loop47

Snd_SCDSSU_Loop48:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $03, Snd_SCDSSU_Loop48
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01

Snd_SCDSSU_Loop49:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $03, Snd_SCDSSU_Loop49
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02

Snd_SCDSSU_Loop4A:
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsLoop            $00, $02, Snd_SCDSSU_Loop4A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop4B:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $03, Snd_SCDSSU_Loop4B
	smpsAlterVol        $03

Snd_SCDSSU_Loop4C:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsLoop            $00, $03, Snd_SCDSSU_Loop4C
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	nRst, $7F, $7F, $7F, $03
	smpsAlterNote       $FF
	dc.b	nA5, $01
	smpsAlterVol        $FE
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E3
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E2
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $1D
	dc.b	smpsNoAttack, nAb5
	smpsAlterNote       $1B
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $16
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EC
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1B
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $25
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1B
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nAb5
	smpsAlterVol        $01
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E8
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F4
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $14
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1B
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $1D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	smpsAlterNote       $E2
	dc.b	smpsNoAttack, nA5
	smpsAlterNote       $E3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $10, nRst

Snd_SCDSSU_Loop4D:
	dc.b	$74
	smpsLoop            $00, $08, Snd_SCDSSU_Loop4D
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nA5, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE

Snd_SCDSSU_Loop4E:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsLoop            $00, $03, Snd_SCDSSU_Loop4E
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop4F:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $05, Snd_SCDSSU_Loop4F
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop50:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop50
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop51:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop51
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop52:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop52
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04

Snd_SCDSSU_Loop53:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop53
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $11
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $07

Snd_SCDSSU_Loop54:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop54
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

Snd_SCDSSU_Loop55:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop55
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop56:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop56
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop57:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, Snd_SCDSSU_Loop57

Snd_SCDSSU_Loop58:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop58
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop59:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, Snd_SCDSSU_Loop59

Snd_SCDSSU_Loop5A:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $04, Snd_SCDSSU_Loop5A
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	$01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE

Snd_SCDSSU_Loop5B:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsLoop            $00, $03, Snd_SCDSSU_Loop5B
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop5C:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $05, Snd_SCDSSU_Loop5C
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop5D:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop5D
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop5E:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop5E
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop5F:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop5F
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04

Snd_SCDSSU_Loop60:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop60
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $11
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $07

Snd_SCDSSU_Loop61:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop61
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

Snd_SCDSSU_Loop62:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop62
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop63:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop63
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop64:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, Snd_SCDSSU_Loop64

Snd_SCDSSU_Loop65:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop65
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop66:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, Snd_SCDSSU_Loop66

Snd_SCDSSU_Loop67:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $04, Snd_SCDSSU_Loop67
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nA4
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE

Snd_SCDSSU_Loop68:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsLoop            $00, $03, Snd_SCDSSU_Loop68
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop69:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $05, Snd_SCDSSU_Loop69
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop6A:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop6A
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop6B:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop6B
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop6C:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop6C
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04

Snd_SCDSSU_Loop6D:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop6D
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $11
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $07

Snd_SCDSSU_Loop6E:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop6E
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

Snd_SCDSSU_Loop6F:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop6F
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop70:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop70
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop71:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, Snd_SCDSSU_Loop71

Snd_SCDSSU_Loop72:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop72
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop73:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, Snd_SCDSSU_Loop73

Snd_SCDSSU_Loop74:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $04, Snd_SCDSSU_Loop74
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	smpsSetvoice        $03
	smpsJump            Snd_SCDSSU_Jump02

; FM5 Data
Snd_SCDSSU_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nRst

Snd_SCDSSU_Loop07:
	dc.b	$40
	smpsLoop            $00, $08, Snd_SCDSSU_Loop07

Snd_SCDSSU_Jump01:
	dc.b	nRst

Snd_SCDSSU_Loop08:
	dc.b	$40
	smpsLoop            $00, $08, Snd_SCDSSU_Loop08
	dc.b	nG4, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE

Snd_SCDSSU_Loop09:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsLoop            $00, $09, Snd_SCDSSU_Loop09
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop0A:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $03, Snd_SCDSSU_Loop0A
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FE

Snd_SCDSSU_Loop0B:
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	smpsLoop            $00, $03, Snd_SCDSSU_Loop0B
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop0C:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, Snd_SCDSSU_Loop0C
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop0D:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $03, Snd_SCDSSU_Loop0D
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $46
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

Snd_SCDSSU_Loop0E:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $02, Snd_SCDSSU_Loop0E

Snd_SCDSSU_Loop0F:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop0F

Snd_SCDSSU_Loop10:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, Snd_SCDSSU_Loop10

Snd_SCDSSU_Loop11:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $03, Snd_SCDSSU_Loop11
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01

Snd_SCDSSU_Loop12:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $03, Snd_SCDSSU_Loop12
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $02

Snd_SCDSSU_Loop13:
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsLoop            $00, $02, Snd_SCDSSU_Loop13
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop14:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $03, Snd_SCDSSU_Loop14
	smpsAlterVol        $03

Snd_SCDSSU_Loop15:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsLoop            $00, $03, Snd_SCDSSU_Loop15
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	nRst, $7F, $7F, $7F, $03
	smpsAlterNote       $FF
	dc.b	nA6, $01
	smpsAlterVol        $FE
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E3
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E2
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $1D
	dc.b	smpsNoAttack, nAb6
	smpsAlterNote       $1B
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $16
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $14
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EC
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1B
	dc.b	smpsNoAttack, nG6
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $25
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $15
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1B
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, nAb6
	smpsAlterVol        $01
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E8
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F4
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $13
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $14
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $16
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	smpsAlterNote       $18
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1B
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	smpsAlterNote       $1D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	smpsAlterNote       $E2
	dc.b	smpsNoAttack, nA6
	smpsAlterNote       $E3
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	smpsAlterNote       $E5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $10, nRst

Snd_SCDSSU_Loop16:
	dc.b	$74
	smpsLoop            $00, $08, Snd_SCDSSU_Loop16
	smpsSetvoice        $07
	smpsAlterVol        $03
	dc.b	nA4, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE

Snd_SCDSSU_Loop17:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsLoop            $00, $03, Snd_SCDSSU_Loop17
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop18:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $05, Snd_SCDSSU_Loop18
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop19:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop19
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop1A:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop1A
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop1B:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop1B
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04

Snd_SCDSSU_Loop1C:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop1C
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $11
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $07

Snd_SCDSSU_Loop1D:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop1D
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

Snd_SCDSSU_Loop1E:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop1E
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop1F:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop1F
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop20:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, Snd_SCDSSU_Loop20

Snd_SCDSSU_Loop21:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop21
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop22:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, Snd_SCDSSU_Loop22

Snd_SCDSSU_Loop23:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $04, Snd_SCDSSU_Loop23
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	$01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE

Snd_SCDSSU_Loop24:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsLoop            $00, $03, Snd_SCDSSU_Loop24
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop25:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $05, Snd_SCDSSU_Loop25
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop26:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop26
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop27:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop27
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop28:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop28
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04

Snd_SCDSSU_Loop29:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop29
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $11
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $07

Snd_SCDSSU_Loop2A:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop2A
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

Snd_SCDSSU_Loop2B:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop2B
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop2C:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop2C
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop2D:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, Snd_SCDSSU_Loop2D

Snd_SCDSSU_Loop2E:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop2E
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop2F:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, Snd_SCDSSU_Loop2F

Snd_SCDSSU_Loop30:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $04, Snd_SCDSSU_Loop30
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nA3
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE

Snd_SCDSSU_Loop31:
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	smpsLoop            $00, $03, Snd_SCDSSU_Loop31
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop32:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $05, Snd_SCDSSU_Loop32
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop33:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop33
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop34:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop34
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $03

Snd_SCDSSU_Loop35:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop35
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $04

Snd_SCDSSU_Loop36:
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop36
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FF
	dc.b	smpsNoAttack, $11
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $07

Snd_SCDSSU_Loop37:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $04, Snd_SCDSSU_Loop37
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05

Snd_SCDSSU_Loop38:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop38
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop39:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $04, Snd_SCDSSU_Loop39
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop3A:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $02, Snd_SCDSSU_Loop3A

Snd_SCDSSU_Loop3B:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsLoop            $00, $02, Snd_SCDSSU_Loop3B
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02

Snd_SCDSSU_Loop3C:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, Snd_SCDSSU_Loop3C

Snd_SCDSSU_Loop3D:
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $04, Snd_SCDSSU_Loop3D
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FE
	smpsSetvoice        $02
	smpsJump            Snd_SCDSSU_Jump01

; PSG1 Data
Snd_SCDSSU_PSG1:
	dc.b	nRst, $10, nG1, $02, nD2, nG1, $04, nD1, nG0, nRst, $10, nG1
	dc.b	$08, nD1, $04, nG0
	smpsLoop            $00, $03, Snd_SCDSSU_PSG1
	dc.b	nRst, $10, nG1, $02, nD2, nG1, $04, nD1, nG0, nRst, $30

Snd_SCDSSU_Loop8B:
	dc.b	nG1, $02, nD2, nG1, $04, nD1, nG0, nRst, $10, nG1, $08, nD1
	dc.b	$04, nG0, nRst, $10
	smpsLoop            $00, $03, Snd_SCDSSU_Loop8B
	dc.b	nG1, $02, nD2, nG1, $04, nD1, nG0, nRst, $10, nG1, $08, nE1
	dc.b	$04, nG0

Snd_SCDSSU_Jump08:
	dc.b	nRst, $10
	smpsLoop            $01, $02, Snd_SCDSSU_Loop8B

Snd_SCDSSU_Loop8C:
	dc.b	nBb1, $02, nD2, nBb1, $04, nD1, nBb0, nRst, $10, nBb1, $08, nD1
	dc.b	$04, nBb0, nRst, $10
	smpsLoop            $00, $04, Snd_SCDSSU_Loop8C

Snd_SCDSSU_Loop8D:
	dc.b	nG1, $02, nD2, nG1, $04, nD1, nG0, nRst, $10, nG1, $08, nD1
	dc.b	$04, nG0, nRst, $10
	smpsLoop            $00, $03, Snd_SCDSSU_Loop8D
	dc.b	nG1, $02, nD2, nG1, $04, nD1, nG0, nRst, $10, nG1, $08, nE1
	dc.b	$04

Snd_SCDSSU_Loop8E:
	dc.b	nG0, nRst, $10, nG1, $02, nD2, nG1, $04, nD1, nG0, nRst, $10
	dc.b	nG1, $08, nD1, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop8E
	dc.b	nG0
	smpsPSGAlterVol     $02
	dc.b	nC2, $7F, smpsNoAttack, $01, nBb1, $7F, smpsNoAttack, $01, nRst, $10
	smpsPSGAlterVol     $FE

Snd_SCDSSU_Loop8F:
	dc.b	nG1, $02, nD2, nG1, $04, nD1, nG0, nRst, $10, nG1, $08, nD1
	dc.b	$04, nG0, nRst, $10
	smpsLoop            $00, $03, Snd_SCDSSU_Loop8F
	dc.b	nG1, $02, nD2, nG1, $04, nD1, nG0, nRst, $10, nG1, $08, nE1
	dc.b	$04

Snd_SCDSSU_Loop90:
	dc.b	nG0, nRst, $10, nG1, $02, nD2, nG1, $04, nD1, nG0, nRst, $10
	dc.b	nG1, $08, nD1, $04
	smpsLoop            $00, $04, Snd_SCDSSU_Loop90
	dc.b	nG0

Snd_SCDSSU_Loop91:
	dc.b	nRst, $10, nBb1, $08, nC2, nRst, $10, nEb2, $03, nRst, $01, nEb2
	dc.b	$03, nRst, $01, nC2, $08
	smpsLoop            $00, $07, Snd_SCDSSU_Loop91
	dc.b	nRst, $10, nBb1, $08, nC2, nRst, $10, nEb2, $03, nRst, $01, nEb2
	dc.b	$03, nRst, $19

Snd_SCDSSU_Loop92:
	dc.b	nC2, $08, nD2, nRst, $10, nF2, $03, nRst, $01, nF2, $03, nRst
	dc.b	$01, nD2, $08, nRst, $10
	smpsLoop            $00, $06, Snd_SCDSSU_Loop92
	dc.b	nC2, $08, nD2, nRst, $10, nF2, $03, nRst, $01, nF2, $03, nRst
	dc.b	$01, nD2, $08, nRst, $7F, $7F, $32, nG1, $08, nE1, $04, nG0
	smpsJump            Snd_SCDSSU_Jump08

; PSG2 Data
Snd_SCDSSU_PSG2:
	dc.b	nRst, $10, nD2, $02, nG2, nD2, $04, nG1, nD1, nRst, $10, nD2
	dc.b	$08, nG1, $04, nD1
	smpsLoop            $00, $03, Snd_SCDSSU_PSG2
	dc.b	nRst, $10, nD2, $02, nG2, nD2, $04, nG1, nD1, nRst, $30

Snd_SCDSSU_Loop83:
	dc.b	nD2, $02, nG2, nD2, $04, nG1, nD1, nRst, $10, nD2, $08, nG1
	dc.b	$04, nD1, nRst, $10
	smpsLoop            $00, $03, Snd_SCDSSU_Loop83
	dc.b	nD2, $02, nG2, nD2, $04, nG1, nD1, nRst, $10, nE2, $08, nG1
	dc.b	$04, nE1

Snd_SCDSSU_Jump07:
	dc.b	nRst, $10
	smpsLoop            $01, $02, Snd_SCDSSU_Loop83

Snd_SCDSSU_Loop84:
	dc.b	nD2, $02, nBb2, nD2, $04, nBb1, nD1, nRst, $10, nD2, $08, nBb1
	dc.b	$04, nD1, nRst, $10
	smpsLoop            $00, $04, Snd_SCDSSU_Loop84

Snd_SCDSSU_Loop85:
	dc.b	nD2, $02, nG2, nD2, $04, nG1, nD1, nRst, $10, nD2, $08, nG1
	dc.b	$04, nD1, nRst, $10
	smpsLoop            $00, $03, Snd_SCDSSU_Loop85
	dc.b	nD2, $02, nG2, nD2, $04, nG1, nD1, nRst, $10, nE2, $08, nG1
	dc.b	$04, nE1

Snd_SCDSSU_Loop86:
	dc.b	nRst, $10, nD2, $02, nG2, nD2, $04, nG1, nD1, nRst, $10, nD2
	dc.b	$08, nG1, $04, nD1
	smpsLoop            $00, $04, Snd_SCDSSU_Loop86
	smpsPSGAlterVol     $02
	dc.b	nD2, $7F, smpsNoAttack, $01, nC2, $7F, smpsNoAttack, $01, nRst, $10
	smpsPSGAlterVol     $FE

Snd_SCDSSU_Loop87:
	dc.b	nD2, $02, nG2, nD2, $04, nG1, nD1, nRst, $10, nD2, $08, nG1
	dc.b	$04, nD1, nRst, $10
	smpsLoop            $00, $03, Snd_SCDSSU_Loop87
	dc.b	nD2, $02, nG2, nD2, $04, nG1, nD1, nRst, $10, nE2, $08, nG1
	dc.b	$04, nE1

Snd_SCDSSU_Loop88:
	dc.b	nRst, $10, nD2, $02, nG2, nD2, $04, nG1, nD1, nRst, $10, nD2
	dc.b	$08, nG1, $04, nD1
	smpsLoop            $00, $04, Snd_SCDSSU_Loop88

Snd_SCDSSU_Loop89:
	dc.b	nRst, $10, nEb3, $08, nF2, nRst, $10, nBb2, $03, nRst, $01, nBb2
	dc.b	$03, nRst, $01, nF3, $08
	smpsLoop            $00, $07, Snd_SCDSSU_Loop89
	dc.b	nRst, $10, nEb3, $08, nF2, nRst, $10, nBb2, $03, nRst, $01, nBb2
	dc.b	$03, nRst, $19

Snd_SCDSSU_Loop8A:
	dc.b	nF3, $08, nG2, nRst, $10, nC3, $03, nRst, $01, nC3, $03, nRst
	dc.b	$01, nG3, $08, nRst, $10
	smpsLoop            $00, $06, Snd_SCDSSU_Loop8A
	dc.b	nF3, $08, nG2, nRst, $10, nC3, $03, nRst, $01, nC3, $03, nRst
	dc.b	$01, nG3, $08, nRst, $7F, $7F, $32, nE2, $08, nG1, $04, nE1
	smpsJump            Snd_SCDSSU_Jump07

; PSG3 Data
Snd_SCDSSU_PSG3:
	smpsPSGform         $E7
	dc.b	nAb5, $04, $04, $04, $04

Snd_SCDSSU_Loop78:
	dc.b	nC5, nAb5, nAb5, nAb5
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	nAb5, nAb5, nAb5, nC5

Snd_SCDSSU_Loop77:
	dc.b	nAb5
	smpsLoop            $00, $07, Snd_SCDSSU_Loop77
	smpsLoop            $01, $03, Snd_SCDSSU_Loop78
	dc.b	nC5, nAb5, nAb5, nAb5
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $08, nRst, $18
	smpsPSGvoice        fTone_02
	dc.b	nAb5, $04, $04, $04, $04

Snd_SCDSSU_Loop7A:
	dc.b	nC5, nAb5, nAb5, nAb5
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	nAb5, nAb5, nAb5, nC5

Snd_SCDSSU_Loop79:
	dc.b	nAb5
	smpsLoop            $00, $07, Snd_SCDSSU_Loop79
	smpsLoop            $01, $03, Snd_SCDSSU_Loop7A

Snd_SCDSSU_Loop7B:
	dc.b	nC5, nAb5, nAb5, nAb5
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	nAb5, nAb5, nAb5, nC5, nAb5, nAb5, nAb5

Snd_SCDSSU_Jump06:
	dc.b	nAb5, $04, $04, $04, $04
	smpsLoop            $00, $10, Snd_SCDSSU_Loop7B
	dc.b	nC5, nAb5, nAb5, nAb5
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	nAb5, nAb5, nAb5
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG, $10
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $05

Snd_SCDSSU_Loop7C:
	dc.b	$10
	smpsLoop            $00, $10, Snd_SCDSSU_Loop7C
	smpsPSGvoice        fTone_02
	dc.b	nAb5, $04, $04, $04, $04

Snd_SCDSSU_Loop7E:
	dc.b	nC5, nAb5, nAb5, nAb5
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	nAb5, nAb5, nAb5, nC5

Snd_SCDSSU_Loop7D:
	dc.b	nAb5
	smpsLoop            $00, $07, Snd_SCDSSU_Loop7D
	smpsLoop            $01, $07, Snd_SCDSSU_Loop7E
	dc.b	nC5, nAb5, nAb5, nAb5
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02
	dc.b	nAb5, nAb5, nAb5, nC5, nAb5, nAb5, nAb5
	smpsPSGvoice        fTone_04
	dc.b	nMaxPSG

Snd_SCDSSU_Loop7F:
	dc.b	$10
	smpsLoop            $00, $0E, Snd_SCDSSU_Loop7F
	dc.b	$08
	smpsPSGvoice        fTone_05
	dc.b	nAb5
	smpsPSGvoice        fTone_04
	dc.b	nMaxPSG

Snd_SCDSSU_Loop80:
	dc.b	$10
	smpsLoop            $00, $0D, Snd_SCDSSU_Loop80
	dc.b	$08, $10, $08, $08
	smpsPSGvoice        fTone_05
	dc.b	nAb5
	smpsPSGvoice        fTone_04
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_05
	dc.b	nAb5
	smpsPSGvoice        fTone_04
	dc.b	nMaxPSG

Snd_SCDSSU_Loop81:
	dc.b	$10
	smpsLoop            $00, $0C, Snd_SCDSSU_Loop81
	dc.b	$08, $10, $08

Snd_SCDSSU_Loop82:
	dc.b	$10
	smpsLoop            $00, $0E, Snd_SCDSSU_Loop82
	dc.b	$08, $08, $08, $08, $08, $08, $10, nRst, $6F, smpsNoAttack, $7F, smpsNoAttack
	dc.b	$12
	smpsPSGvoice        fTone_02
	smpsJump            Snd_SCDSSU_Jump06

Snd_SCDSSU_Voices:
;	Voice $00
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $01
;	$04
;	$38, $38, $78, $78, 	$1F, $4A, $1F, $4A, 	$00, $06, $00, $06
;	$00, $01, $01, $01, 	$00, $16, $00, $16, 	$2B, $00, $23, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $08, $08, $08, $08
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $0A, $1F, $0A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $00, $06, $00
	smpsVcDecayRate2    $01, $01, $01, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $06, $00, $06, $00
	smpsVcTotalLevel    $00, $23, $00, $2B

;	Voice $02
;	$3B
;	$00, $71, $71, $01, 	$1F, $16, $0F, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$00, $01, $01, $06, 	$19, $17, $19, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $07, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $0F, $16, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $01, $01, $00
	smpsVcTotalLevel    $00, $19, $17, $19

;	Voice $03
;	$3B
;	$3E, $40, $43, $32, 	$DE, $14, $1E, $14, 	$14, $0F, $0F, $00
;	$01, $00, $00, $00, 	$36, $25, $26, $29, 	$1C, $18, $15, $01
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $02, $03, $00, $0E
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $14, $1E, $14, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0F, $0F, $14
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $09, $06, $05, $06
	smpsVcTotalLevel    $01, $15, $18, $1C

;	Voice $04
;	$07
;	$34, $74, $32, $71, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $05, $03
;	$00, $00, $00, $00, 	$3F, $3F, $2F, $2F, 	$0A, $0A, $0A, $0A
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $07, $03
	smpsVcCoarseFreq    $01, $02, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $0A, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $03, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0A, $0A, $0A, $0A

;	Voice $05
;	$3C
;	$72, $74, $32, $02, 	$18, $0F, $16, $10, 	$07, $0A, $07, $0A
;	$01, $07, $01, $07, 	$24, $16, $25, $16, 	$17, $00, $0A, $05
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $07
	smpsVcCoarseFreq    $02, $02, $04, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $16, $0F, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $07, $0A, $07
	smpsVcDecayRate2    $07, $01, $07, $01
	smpsVcDecayLevel    $01, $02, $01, $02
	smpsVcReleaseRate   $06, $05, $06, $04
	smpsVcTotalLevel    $05, $0A, $00, $17

;	Voice $06
;	$3C
;	$74, $74, $34, $34, 	$10, $0E, $10, $0E, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$02, $06, $02, $06, 	$23, $00, $23, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $10, $0E, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $02, $06, $02
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $07
;	$3A
;	$34, $73, $74, $31, 	$1F, $1F, $1F, $1F, 	$1F, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$05, $00, $05, $07, 	$22, $22, $22, $05
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $04, $03, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $1F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $05, $00, $05
	smpsVcTotalLevel    $05, $22, $22, $22

