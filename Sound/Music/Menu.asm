Snd_Menu_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     s3p45_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       s3p45_DAC
	smpsHeaderFM        s3p45_FM1,	$00, $03
	smpsHeaderFM        s3p45_FM2,	$F4, $00
	smpsHeaderFM        s3p45_FM3,	$00, $05
	smpsHeaderFM        s3p45_FM4,	$00, $05
	smpsHeaderFM        s3p45_FM5,	$00, $05
	smpsHeaderPSG       s3p45_PSG1,	$E8, $00, $00, sTone_0F
	smpsHeaderPSG       s3p45_PSG2,	$E8, $01, $00, sTone_0F
	smpsHeaderPSG       s3p45_PSG3,	$2E, $00, $00, sTone_0D

; DAC Data
s3p45_DAC:
	dc.b	dSnareS3, $02, dSnareS3, dSnareS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3

Snd_2PMenu_DAC:
	smpsSetTempoMod	$4A
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, dKickS3, nRst, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $03, Snd_2PMenu_DAC
	dc.b	dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, dKickS3, nRst, dKickS3, nRst
	dc.b	dSnareS3, nRst, dSnareS3, dSnareS3

Snd_2PMenu_Loop00:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, dKickS3, nRst, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $03, Snd_2PMenu_Loop00
	dc.b	dKickS3, nRst, dSnareS3, nRst, dSnareS3, nRst, nRst, dKickS3, dKickS3, nRst, dSnareS3, dSnareS3
	dc.b	dSnareS3, nRst, dSnareS3, dSnareS3

Snd_2PMenu_Loop01:
	dc.b	dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, dKickS3, nRst, dKickS3, nRst
	dc.b	dSnareS3, nRst, dKickS3, nRst
	smpsLoop            $00, $03, Snd_2PMenu_Loop01
	dc.b	dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, dKickS3, nRst, dKickS3, nRst
	dc.b	dSnareS3, nRst, dSnareS3, dSnareS3
	smpsLoop            $01, $02, Snd_2PMenu_Loop01

Snd_2PMenu_Loop02:
	dc.b	dKickS3, $06, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, dKickS3, nRst, dKickS3
	dc.b	nRst, dSnareS3, nRst, nRst, nRst
	smpsLoop            $00, $03, Snd_2PMenu_Loop02
	dc.b	dKickS3, nRst, nRst, nRst, dSnareS3, nRst, nRst, dKickS3, dKickS3, nRst, dKickS3, nRst
	dc.b	dSnareS3, nRst, dSnareS3, dSnareS3
	smpsLoop            $01, $02, Snd_2PMenu_Loop02
	smpsSetTempoMod	$25

s3p45_Jump00:
	dc.b	dKickS3, $18, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $12, dKickS3, $0C, dSnareS3, $06
	dc.b	dKickS3, $12, dKickS3, $18, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $12, dKickS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $06, dSnareS3, $0C, dSnareS3, $12
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $06, dSnareS3, $0C
	dc.b	dSnareS3, $12, dKickS3, $0C, dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3
	dc.b	$24, dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3
	dc.b	$0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3
	dc.b	$06, dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3, $06, dKickS3
	dc.b	dSnareS3, $0C, dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3, $06, dKickS3, $12
	dc.b	dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18
	dc.b	dSnareS3, $24, dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $1E
	dc.b	dSnareS3, $06, dKickS3, dSnareS3, dSnareS3, dKickS3, dSnareS3, dSnareS3, dKickS3, $18, dSnareS3, $24
	dc.b	dKickS3, $0C, dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3, $0C
	dc.b	dSnareS3, $06, dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3, $0C, dSnareS3, $06
	dc.b	dKickS3, $12, dKickS3, $18, dSnareS3, $24, dKickS3, $06, dSnareS3, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dKickS3, dKickS3, dKickS3, dKickS3, dSnareS3, $24, dKickS3, $06, dKickS3, dSnareS3, dKickS3
	dc.b	$12, dKickS3, $06, dKickS3, dKickS3, dKickS3, dSnareS3, $24, dKickS3, $06, dKickS3, dSnareS3
	dc.b	dKickS3, dSnareS3, $0C, dKickS3, $06, dKickS3, dKickS3, dKickS3, dSnareS3, $24, dKickS3, $06
	dc.b	dKickS3, dSnareS3, dKickS3, $12, dKickS3, $06, dKickS3, dKickS3, dKickS3, dSnareS3, $24, dKickS3
	dc.b	$06, dKickS3, dSnareS3, dKickS3, dSnareS3, $0C, dKickS3, $06, dKickS3, dKickS3, dKickS3, dSnareS3
	dc.b	$24, dKickS3, $06, dKickS3, dSnareS3, dKickS3, $12, dKickS3, $06, dKickS3, dKickS3, dKickS3
	dc.b	dSnareS3, $24, dKickS3, $06, dKickS3, dSnareS3, dKickS3, dSnareS3, $0C, dKickS3, $06, dKickS3
	dc.b	dKickS3, dKickS3, dSnareS3, $24, dKickS3, $06, dKickS3, dSnareS3, dKickS3, $12, dSnareS3, $06
	dc.b	dSnareS3, dSnareS3, dSnareS3, $26, dSnareS3, $02, dSnareS3, dSnareS3, $06, dSnareS3, dSnareS3, dSnareS3
	dc.b	dSnareS3, dSnareS3
	smpsJump            Snd_2PMenu_DAC

; FM1 Data
s3p45_FM1:
	dc.b	nRst, $30

Snd_2PMenu_Loop03:
	smpsSetvoice        $00
	dc.b	nE3, $06, nRst, $1E, nE3, $06, nD3, $12, nB2, $06, nRst, nA2
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $08, Snd_2PMenu_Loop03
	dc.b	nE3, $06, nRst, $36, nB2, $06, nD3, $12, nE3, $06, nRst, nFs3
	dc.b	$06, nRst, $2A, nCs3, $06, nCs3, nE3, nFs3, nRst, $18, nB2, $06
	dc.b	nRst, $36, nFs2, $06, nA2, $12, nB2, $06, nRst, nB2, $06, nRst
	dc.b	$24, nD2, $06, nD3, nRst, nCs3, nRst, nB2, nRst, nA2, nRst, nE2
	dc.b	$06, nRst, $36, nB1, $06, nD2, nB1, nE2, nB1, nRst, nFs2, $06
	dc.b	nRst, $2A, nCs2, $06, nCs2, nE2, nFs2, $1E, nB2, $06, nRst, $36
	dc.b	nFs2, $06, nA2, $12, nB2, $06, nRst, nB2, $06, nRst, $12, nRst
	dc.b	$0C, nB2, nA2, nRst, nRst, nRst

Snd_2PMenu_Loop04:
	dc.b	nE3, $06, nRst, $1E, nE3, $06, nD3, $12, nB2, $06, nRst, nA2
	dc.b	nRst, nRst, nRst
	smpsLoop            $00, $08, Snd_2PMenu_Loop04
	smpsChangeTransposition	$18
	smpsSetVol	$12!$7F

	smpsSetvoice        $0A
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC1, $06, nRst, $12, nC2, nG1, $06, nRst, nBb1, $04, nRst, $02
	dc.b	nC2, $04, nRst, $08, nBb1, $06, nG1, $12, nF1, $06, nFs1, nG1
	dc.b	nF1, nEb1, nC1, $0C, nEb1, $04, nRst, $08, nFs1, $04, nRst, $02
	dc.b	nF1, $0C, nEb1, $06, nBb0, $0E, nRst, $04, nC1, $06, nRst, $12
	dc.b	nC2, nG1, $06, nRst, nBb1, $04, nRst, $02, nC2, $04, nRst, $08
	dc.b	nBb1, $06, nG1, $12, nF1, $06, nFs1, nG1, nF1, nEb1, nC1, $0C
	dc.b	nEb1, $04, nRst, $08, nFs1, $04, nRst, $02, nF1, $0C, nEb1, $06
	dc.b	nBb0, $0E, nRst, $04, nC1, $06, nRst, $12, nC2, nG1, $06, nBb1
	dc.b	$04, nRst, $08, nC2, $04, nRst, $08, nBb1, $06, nG1, $12, nF1
	dc.b	$06, nFs1, nG1, nF1, nEb1, nC1, $0C, nEb1, $06, nRst, $0C, nF1
	dc.b	$04, nRst, $08, nEb1, $06, nBb0, $0E, nRst, $04, nC1, $06, nRst
	dc.b	$12, nC2, nG1, $06, nBb1, $04, nRst, $08, nC2, $04, nRst, $08
	dc.b	nBb1, $06, nG1, $12, nF1, $06, nFs1, nG1, nF1, nEb1, nC1, $0C
	dc.b	nEb1, $06, nRst, $0C, nF1, $04, nRst, $08, nEb1, $06, nBb0, $0E
	dc.b	nRst, $04, nF1, $06, nRst, $12, nF2, nC2, $06, nEb2, $04, nRst
	dc.b	$08, nF2, $04, nRst, $08, nEb2, $06, nC2, $12, nBb1, $06, nB1
	dc.b	nC2, nBb1, nAb1, nF1, $0C, nAb1, $06, nRst, $0C, nBb1, $04, nRst
	dc.b	$08, nAb1, $06, nF1, $0E, nRst, $04, nC1, $06, nRst, $12, nC2
	dc.b	nG1, $06, nBb1, $04, nRst, $08, nC2, $04, nRst, $08, nBb1, $06
	dc.b	nG1, $12, nF1, $06, nFs1, nG1, nF1, nEb1, nC1, $0C, nEb1, $06
	dc.b	nRst, $0C, nF1, $04, nRst, $08, nEb1, $06, nBb0, $0E, nRst, $04
	dc.b	nAb0, $06, nRst, $12, nAb1, $0E, nRst, $04, nAb1, $06, nG1, $04
	dc.b	nRst, $08, nF1, $04, nRst, $08, nEb1, $06, nF1, $10, nRst, $02
	dc.b	nC1, $06, nRst, $12, nC2, $10, nRst, $02, nC2, $04, nRst, $02
	dc.b	nBb1, $04, nRst, $08, nG1, $04, nRst, $08, nF1, $04, nRst, $02
	dc.b	nG1, $0E, nRst, $04, nAb0, $06, nRst, $12, nAb1, $0E, nRst, $04
	dc.b	nAb1, $06, nG1, $04, nRst, $08, nF1, $04, nRst, $08, nEb1, $06
	dc.b	nF1, $10, nRst, $02, nC1, $06, nRst, $12, nC2, $10, nRst, $02
	dc.b	nC2, $04, nRst, $02, nBb1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b	nF1, $04, nRst, $02, nG1, $0E, nRst, $04, nAb0, $06, nRst, $12
	dc.b	nAb1, $0E, nRst, $04, nAb1, $06, nG1, $04, nRst, $08, nF1, $04
	dc.b	nRst, $08, nEb1, $06, nF1, $10, nRst, $02, nC1, $06, nRst, $12
	dc.b	nC2, $10, nRst, $02, nC2, $04, nRst, $02, nBb1, $04, nRst, $08
	dc.b	nG1, $04, nRst, $08, nF1, $04, nRst, $02, nG1, $0E, nRst, $04
	dc.b	nAb0, $06, nRst, $12, nAb1, $0E, nRst, $04, nAb1, $06, nG1, $04
	dc.b	nRst, $08, nF1, $04, nRst, $08, nEb1, $06, nF1, $10, nRst, $02
	dc.b	nC1, $06, nRst, $12, nC2, $10, nRst, $02, nC2, $04, nRst, $02
	dc.b	nBb1, $04, nRst, $08, nG1, $04, nRst, $08, nF1, $04, nRst, $02
	dc.b	nG1, $0E, nRst, $04, nAb0, $06, nRst, $12, nAb1, $0E, nRst, $04
	dc.b	nAb1, $06, nG1, $04, nRst, $08, nF1, $04, nRst, $08, nEb1, $06
	dc.b	nF1, $10, nRst, $02, nC1, $06, nRst, $12, nC2, $10, nRst, $02
	dc.b	nC2, $04, nRst, $02, nBb1, $04, nRst, $08, nG1, $04, nRst, $08
	dc.b	nF1, $04, nRst, $02, nG1, $0E, nRst, $04, nCs1, $06, nRst, $12
	dc.b	nCs2, $0E, nRst, $04, nCs2, $06, nB1, $04, nRst, $08, nAb1, $04
	dc.b	nRst, $08, nFs1, $06, nAb1, $10, nRst, $02, nG1, $06, nRst, $12
	dc.b	nG2, $10, nRst, $02, nG2, $04, nRst, $02, nF2, $04, nRst, $08
	dc.b	nD2, $04, nRst, $08, nC2, $04, nRst, $02, nD2, $0E, nRst, $04
	smpsModOff
	smpsChangeTransposition	-$18
	smpsSetVol	$03!$7F
	smpsJump            Snd_2PMenu_Loop03

; FM5 Data
s3p45_FM5:
	dc.b	nRst, $30

Snd_2PMenu_FM5:
	smpsCall            Snd_2PMenu_Call00
	smpsSetvoice        $02
	dc.b	nD4, $3C, nG4, $12, nA4, nA4, $60, nA4, nA4, nD4, $3C, nG4
	dc.b	$12, nA4, nA4, $60, nE4, nA4, $48, nCs5, $18
	smpsCall            Snd_2PMenu_Call00
	smpsChangeTransposition	$0C
	smpsSetVol	$19!$7F

	dc.b	nRst, $03
	smpsSetvoice        $08
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $1E, nBb4, $0A, nRst, $02, nA4, $04, nRst, $50, nA4, $0A
	dc.b	nRst, $02, nBb4, $04, nRst, $50, nBb4, $0A, nRst, $02, nA4, $04
	dc.b	nRst, $50, nA4, $0A, nRst, $02, nBb4, $04, nRst, $32
	smpsSetvoice        $0B
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4, $0C, nBb3, $06
	dc.b	nC4, $1C, nRst, $08, nF3, $02, nFs3, nRst, nG3, $06, nBb3, nEb4
	dc.b	$04, nRst, $08, nD4, $04, nRst, $08, nC4, $06, nBb3, $12, nC4
	dc.b	$0C, nBb3, $06, nFs3, $02, nG3, $06, nRst, $04, nF3, nRst, $02
	dc.b	nG3, $06, nBb3, nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4
	dc.b	$0C, nBb3, $04, nRst, $02, nC4, $20, nRst, $04, nF3, nRst, $02
	dc.b	nG3, $06, nBb3, nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4
	dc.b	$06, nBb3, $12, nC4, $0C, nBb3, $06, nG3, $08, nRst, $16, nF2
	dc.b	$06, nF3, nEb3, $04, nRst, $02, nC3, $06, nEb3, nF3, $04, nRst
	dc.b	$08, nFs3, $12, nF3, $06, nC3, nEb3, nF3, nRst, nBb3, $12, nG3
	dc.b	$06, nF3, $04, nRst, $02, nG3, $06, nF3, nEb3, nC3, nEb3, $04
	dc.b	nRst, $08, nF3, $06, nEb3, $08, nRst, $04, nF3, nRst, $02, nG3
	dc.b	$06, nBb3, nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4, $0C
	dc.b	nBb3, $06, nC4, $0C, nD4, $06, nC4, $20, nRst, $04, nF4, $0E
	dc.b	nRst, $04, nF4, $12, nEb4, $2E, nRst, $0E, nD4, nRst, $04, nD4
	dc.b	$12, nC4, $3C, nBb3, $0C, nRst, $06, nBb3, $12, nG3, $38, nRst
	dc.b	$04, nF3, $0E, nRst, $04, nF3, $12, nEb3, $18, nF3, $0C, nG3
	dc.b	$08, nRst, $04, nBb3, $0A, nRst, $02, nEb3, $12, nD3, $04, nRst
	dc.b	$0E, nEb3, $18
	smpsSetvoice        $09
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC3, $06, nEb3, nF3, nFs3, nG3, nBb3, nC4, $0C, nBb3, $04, nRst
	dc.b	$02, nC4, $06, nEb4, nF4, nRst, nF4, $02, nF4, nFs4, nF4, $0C
	dc.b	nEb4, $06, nC4, nEb4, nF4, $10, nRst, $02, nFs4, nG4, $0A, nBb4
	dc.b	$06, nG4, nBb4, nC5, nRst, nD5, $02, nEb5, $0A, nD5, $04, nRst
	dc.b	$02, nC5, $06, nBb4, nC5, $0C, nBb4, $02, nG4, nF4, nEb4, nC4
	dc.b	nBb3
	smpsSetvoice        $09
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb5, $06, nF5, $0A, nRst, $02, nEb5, $06, nFs5, $0C, nEb5, $06
	dc.b	nA5, $02, nBb5, $0A, nF5, $06, nEb5, nC5, nEb5, nC5, nBb4, nC5
	dc.b	nBb4, nG4, nBb4, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4, nC4, nEb4
	dc.b	$12, nC4, $02, nBb3, nG3, nF3, nEb3, nC3
	smpsSetvoice        $09
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $12, nFs4, nF4, $28, nRst, $14, nFs4, $02, nG4, $10, nBb4
	dc.b	$12, nG4, $06, nBb4, nA4, $12, nFs4, $02, nG4, $14, nRst, $08
	smpsSetvoice        $09
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nBb4, $12, nEb5, $1E, nB4, $12, nE5, $1E, nF5, $08, nRst, $10
	dc.b	nF5, $30, nRst, $06, nF3, nG3, nBb3, $03
	smpsModOff
	smpsChangeTransposition	-$C
	smpsSetVol	$05!$7F
	smpsJump            Snd_2PMenu_FM5

Snd_2PMenu_Call00:
	smpsSetvoice        $03
	dc.b	nRst, $24, nD4, $3C, smpsNoAttack, $60, nE4, smpsNoAttack, nE4
	smpsLoop            $00, $02, Snd_2PMenu_Call00
	smpsReturn

; FM2 Data
s3p45_FM2:
	dc.b	nRst, $30

Snd_2PMenu_FM2:
	smpsCall            Snd_2PMenu_Call03
	smpsSetvoice        $06
	dc.b	nG0, $60, nRst
	smpsSetvoice        $07
	dc.b	nE5, $0D
	smpsFMAlterVol      $08
	dc.b	nE5, $0B, nRst, $48
	smpsFMAlterVol      $F8
	dc.b	nE5, $0D
	smpsFMAlterVol      $08
	dc.b	nE5, $0B, nRst, $48
	smpsFMAlterVol      $F8
	smpsSetvoice        $06
	dc.b	nG0, $60, nRst
	smpsSetvoice        $07
	dc.b	nE5, $0D
	smpsFMAlterVol      $08
	dc.b	nE5, $0B, nRst, $48
	smpsFMAlterVol      $F8
	dc.b	nE5, $0D
	smpsFMAlterVol      $08
	dc.b	nE5, $0B, nRst, $48
	smpsFMAlterVol      $F8
	smpsCall            Snd_2PMenu_Call03
	smpsChangeTransposition	$18
	smpsSetVol	$19!$7F

	smpsSetvoice        $08
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nRst, $1E, nBb4, $0A, nRst, $02, nA4, $04, nRst, $50, nA4, $0A
	dc.b	nRst, $02, nBb4, $04, nRst, $50, nBb4, $0A, nRst, $02, nA4, $04
	dc.b	nRst, $50, nA4, $0A, nRst, $02, nBb4, $04, nRst, $32
	smpsSetvoice        $0B
	smpsDetune          $03
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4, $0C, nBb3, $06
	dc.b	nC4, $1C, nRst, $08, nF3, $02, nFs3, nRst, nG3, $06, nBb3, nEb4
	dc.b	$04, nRst, $08, nD4, $04, nRst, $08, nC4, $06, nBb3, $12, nC4
	dc.b	$0C, nBb3, $06, nFs3, $02, nG3, $06, nRst, $04, nF3, nRst, $02
	dc.b	nG3, $06, nBb3, nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4
	dc.b	$0C, nBb3, $04, nRst, $02, nC4, $20, nRst, $04, nF3, nRst, $02
	dc.b	nG3, $06, nBb3, nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4
	dc.b	$06, nBb3, $12, nC4, $0C, nBb3, $06, nG3, $08, nRst, $16, nF2
	dc.b	$06, nF3, nEb3, $04, nRst, $02, nC3, $06, nEb3, nF3, $04, nRst
	dc.b	$08, nFs3, $12, nF3, $06, nC3, nEb3, nF3, nRst, nBb3, $12, nG3
	dc.b	$06, nF3, $04, nRst, $02, nG3, $06, nF3, nEb3, nC3, nEb3, $04
	dc.b	nRst, $08, nF3, $06, nEb3, $08, nRst, $04, nF3, nRst, $02, nG3
	dc.b	$06, nBb3, nEb4, $04, nRst, $08, nD4, $04, nRst, $08, nC4, $0C
	dc.b	nBb3, $06, nC4, $0C, nD4, $06, nC4, $20, nRst, $04, nF4, $0E
	dc.b	nRst, $04, nF4, $12, nEb4, $2E, nRst, $0E, nD4, nRst, $04, nD4
	dc.b	$12, nC4, $3C, nBb3, $0C, nRst, $06, nBb3, $12, nG3, $38, nRst
	dc.b	$04, nF3, $0E, nRst, $04, nF3, $12, nEb3, $18, nF3, $0C, nG3
	dc.b	$08, nRst, $04, nBb3, $0A, nRst, $02, nEb3, $12, nD3, $04, nRst
	dc.b	$0E, nEb3, $18
	smpsSetvoice        $09
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC3, $06, nEb3, nF3, nFs3, nG3, nBb3, nC4, $0C, nBb3, $04, nRst
	dc.b	$02, nC4, $06, nEb4, nF4, nRst, nF4, $02, nF4, nFs4, nF4, $0C
	dc.b	nEb4, $06, nC4, nEb4, nF4, $10, nRst, $02, nFs4, nG4, $0A, nBb4
	dc.b	$06, nG4, nBb4, nC5, nRst, nD5, $02, nEb5, $0A, nD5, $04, nRst
	dc.b	$02, nC5, $06, nBb4, nC5, $0C, nBb4, $02, nG4, nF4, nEb4, nC4
	dc.b	nBb3
	smpsSetvoice        $09
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb5, $06, nF5, $0A, nRst, $02, nEb5, $06, nFs5, $0C, nEb5, $06
	dc.b	nA5, $02, nBb5, $0A, nF5, $06, nEb5, nC5, nEb5, nC5, nBb4, nC5
	dc.b	nBb4, nG4, nBb4, nG4, nF4, nG4, nF4, nEb4, nF4, nEb4, nC4, nEb4
	dc.b	$12, nC4, $02, nBb3, nG3, nF3, nEb3, nC3
	smpsSetvoice        $09
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $12, nFs4, nF4, $28, nRst, $14, nFs4, $02, nG4, $10, nBb4
	dc.b	$12, nG4, $06, nBb4, nA4, $12, nFs4, $02, nG4, $14, nRst, $08
	smpsSetvoice        $09
	smpsDetune          $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nBb4, $12, nEb5, $1E, nB4, $12, nE5, $1E, nF5, $08, nRst, $10
	dc.b	nF5, $30, nRst, $06, nF3, nG3, nBb3
	smpsModOff
	smpsChangeTransposition	-$18
	smpsSetVol	$00!$7F
	smpsJump            Snd_2PMenu_FM2

Snd_2PMenu_Call03:
	smpsSetvoice        $06
	dc.b	nC4, $60, nRst
	smpsSetvoice        $07
	dc.b	nE5, $0D
	smpsFMAlterVol      $08
	dc.b	nE5, $0B, nRst, $48
	smpsFMAlterVol      $F8
	dc.b	nRst, $60
	smpsSetvoice        $06
	dc.b	nRst, $06, nC4, $5A, nRst, $60
	smpsSetvoice        $07
	dc.b	nE5, $0D
	smpsFMAlterVol      $08
	dc.b	nE5, $0B, nRst, $48
	smpsFMAlterVol      $F8
	dc.b	nRst, $60
	smpsReturn

; FM3 Data
s3p45_FM3:
	dc.b	nRst, $30

Snd_2PMenu_Jump01:
	smpsPan             panLeft, $00
	smpsAlterNote       $01
	smpsCall            Snd_2PMenu_Call02
	smpsSetvoice        $02
	dc.b	nG3, $60, nA3, $24, nE3, $3C, nA3, $60, nA3, nG3, $60, nA3
	dc.b	$24, nE3, $3C, nA3, $60, nA3, $48, nCs4, $18
	smpsCall            Snd_2PMenu_Call02
	smpsChangeTransposition	$0C
	smpsSetVol	$19!$7F
	smpsPan             panCenter, $00
	smpsAlterNote       $00

	smpsSetvoice        $0C
	dc.b	nF3, $04, nRst, $08, nEb3, $06, nF3, $04, nRst, $26, nG3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $02, nG3, $12, nF3, $04, nRst, $08
	dc.b	nEb3, $06, nF3, $04, nRst, $26, nBb3, $04, nRst, $0E, nBb3, $0A
	dc.b	nRst, $08, nF3, $04, nRst, $08, nEb3, $06, nF3, $04, nRst, $26
	dc.b	nG3, $04, nRst, $08, nF3, $04, nRst, $02, nG3, $12, nF3, $04
	dc.b	nRst, $08, nEb3, $06, nF3, $04, nRst, $26, nBb3, $04, nRst, $0E
	dc.b	nBb3, $0A, nRst, $08, nG3, $04, nRst, $14, nA3, $10, nRst, $02
	dc.b	nG3, $04, nRst, $3E, nBb4, $04, nRst, $0E, nBb4, $04, nRst, $0E
	dc.b	nA4, $02, nBb4, $10, nA4, $04, nRst, $1A, nG3, $04, nRst, $14
	dc.b	nA3, $10, nRst, $02, nG3, $04, nRst, $3E, nBb4, $04, nRst, $0E
	dc.b	nBb4, $04, nRst, $0E, nA4, $02, nBb4, $10, nA4, $04, nRst, $1A
	dc.b	nEb3, $04, nRst, $14, nFs3, $02, nG3, $0E, nRst, $02, nEb3, $04
	dc.b	nRst, $3E, nEb4, $04, nRst, $0E, nEb4, $04, nRst, $0E, nF4, $02
	dc.b	nFs4, $0E, nRst, $02, nEb4, $04, nRst, $1A, nG3, $04, nRst, $14
	dc.b	nA3, $10, nRst, $02, nG3, $04, nRst, $32, nD4, $10, nRst, $02
	dc.b	nD4, $04, nRst, $0E, nBb3, $10, nRst, $2C, nBb3, $10, nRst, $02
	dc.b	nBb3, $04, nRst, $0E, nG3, $10, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nF4, $04, nRst, $02, nEb4, $0E, nRst, $04
	dc.b	nG3, $10, nRst, $02, nG3, $04, nRst, $0E, nEb3, $10, nRst, $02
	dc.b	nC4, $04, nRst, $02, nEb4, $04, nRst, $08, nD4, $06, nC4, $12
	dc.b	nD3, $10, nRst, $02, nD3, $04, nRst, $0E, nC3, $10, nRst, $02
	dc.b	nF4, $04, nRst, $02, nBb4, $04, nRst, $08, nAb4, $04, nRst, $02
	dc.b	nG4, $10, nRst, $02, nBb2, $10, nRst, $02, nBb2, $04, nRst, $0E
	dc.b	nBb2, $10, nRst, $02, nBb3, $04, nRst, $02, nF4, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nC4, $0C, nRst, $06, nAb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $1A
	dc.b	nBb4, $02, nC5, $0A, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nAb3, $0A, nRst, $08, nC4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $02, nBb3, $04, nRst, $02, nC4, $04, nRst, $1A
	dc.b	nEb5, $0C, nC4, $04, nRst, $02, nC4, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nC4, $0A, nRst, $08, nAb3, $04, nRst, $02, nAb3, $04
	dc.b	nRst, $02, nEb3, $04, nRst, $02, nAb3, $04, nRst, $1A, nF5, $02
	dc.b	nFs5, $0A, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $02, nAb3, $0A, nRst, $08, nC4, $04, nRst, $02, nC4, $04
	dc.b	nRst, $02, nBb3, $04, nRst, $02, nC4, $04, nRst, $1A, nEb5, $0C
	dc.b	nC4, $04, nRst, $02, nC4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nC4, $0A, nRst, $08, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nAb3, $04, nRst, $1A, nBb4, $02, nC5, $0A
	dc.b	nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nAb3, $0A, nRst, $08, nC4, $04, nRst, $02, nC4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nC4, $04, nRst, $1A, nF5, $0C, nC4, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nBb3, $04, nRst, $02, nC4, $0A
	dc.b	nRst, $08, nAb3, $04, nRst, $02, nAb3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $02, nAb3, $04, nRst, $1A, nEb5, $02, nF5, $0A, nAb3, $04
	dc.b	nRst, $02, nAb3, $04, nRst, $02, nEb3, $04, nRst, $02, nAb3, $0A
	dc.b	nRst, $08, nD4, $04, nRst, $02, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $26, nD4, $04, nRst, $02, nD4, $04
	dc.b	nRst, $02, nD4, $04, nRst, $02, nD4, $04, nRst, $0E
	smpsChangeTransposition	-$0C
	smpsSetVol	$05!$7F
	smpsJump            Snd_2PMenu_Jump01

Snd_2PMenu_Call02:
	smpsSetvoice        $03
	dc.b	nRst, $24, nA3, $3C, smpsNoAttack, $3C
	smpsSetvoice        $01
	smpsNoteFill        $06
	dc.b	nG5, $06, nG5
	smpsFMAlterVol      $10
	dc.b	nG5, nRst
	smpsFMAlterVol      $F0
	dc.b	nA5, nRst
	smpsNoteFill        $00
	smpsSetvoice        $03
	dc.b	nA3, $60, smpsNoAttack, $54
	smpsSetvoice        $05
	smpsModSet          $01, $01, $03, $06
	dc.b	nE5, $12
	smpsModOff
	smpsSetvoice        $03
	dc.b	nRst, $1E, nA3, $3C, smpsNoAttack, $3C
	smpsSetvoice        $01
	smpsNoteFill        $06
	dc.b	nG5, $06, nG5
	smpsFMAlterVol      $10
	dc.b	nG5, nRst
	smpsFMAlterVol      $F0
	dc.b	nA5, nRst
	smpsNoteFill        $00
	smpsSetvoice        $03
	dc.b	nA3, $60, smpsNoAttack, $60
	smpsReturn

; FM4 Data
s3p45_FM4:
	dc.b	nRst, $30

Snd_2PMenu_Jump00:
	smpsPan             panRight, $00
	smpsCall            Snd_2PMenu_Call01
	smpsSetvoice        $02
	dc.b	nB3, $60, nE4, nD4, nD4, nB3, $60, nE4, nCs4, nD4, $48, nE4
	dc.b	$18
	smpsCall            Snd_2PMenu_Call01
	smpsChangeTransposition	$0C
	smpsSetVol	$19!$7F
	smpsPan             panCenter, $00

	smpsSetvoice        $0D
	dc.b	nD3, $04, nRst, $08, nC3, $06, nD3, $04, nRst, $08
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	smpsSetvoice        $0D
	dc.b	nEb3, $02, nRst, $0A, nD3, $04, nRst, $02, nEb3, $12, nD3, $04
	dc.b	nRst, $08, nC3, $06, nD3, $04, nRst, $08
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	smpsSetvoice        $0D
	dc.b	nG3, $02, nRst, $10, nG3, $0A, nRst, $08, nD3, $04, nRst, $08
	dc.b	nC3, $06, nD3, $04, nRst, $08
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	smpsSetvoice        $0D
	dc.b	nEb3, $02, nRst, $0A, nD3, $04, nRst, $02, nEb3, $12, nD3, $04
	dc.b	nRst, $08, nC3, $06, nD3, $04, nRst, $08
	smpsSetvoice        $08
	smpsDetune          $FD
	smpsModSet          $0F, $01, $06, $06
	dc.b	nEb4, $0A, nRst, $02, nEb4, $04, nRst, $0E
	smpsSetvoice        $0D
	dc.b	nG3, $02, nRst, $10, nG3, $0A, nRst, $08, nEb3, $04, nRst, $14
	dc.b	nF3, $10, nRst, $02, nEb3, $04, nRst, $3E, nG4, $04, nRst, $0E
	dc.b	nG4, $04, nRst, $0E, nG4, $10, nRst, $02, nF4, $04, nRst, $1A
	dc.b	nEb3, $04, nRst, $14, nF3, $10, nRst, $02, nEb3, $04, nRst, $3E
	dc.b	nG4, $04, nRst, $0E, nG4, $04, nRst, $0E, nG4, $10, nRst, $02
	dc.b	nF4, $04, nRst, $1A, nC3, $04, nRst, $14, nEb3, $10, nRst, $02
	dc.b	nC3, $04, nRst, $3E, nC4, $04, nRst, $0E, nC4, $04, nRst, $0E
	dc.b	nEb4, $10, nRst, $02, nC4, $04, nRst, $1A, nEb3, $04, nRst, $14
	dc.b	nF3, $10, nRst, $02, nEb3, $04, nRst, $32, nBb3, $10, nRst, $02
	dc.b	nBb3, $04, nRst, $0E, nG3, $10, nRst, $02, nG4, $06, nBb4, nD5
	dc.b	nBb4, nG4, nEb4, nBb3, nF3, $10, nRst, $02, nF3, $04, nRst, $0E
	dc.b	nEb3, $10, nRst, $02, nBb3, $04, nRst, $02, nEb4, $04, nRst, $08
	dc.b	nD4, $04, nRst, $02, nC4, $0E, nRst, $04, nEb3, $10, nRst, $02
	dc.b	nEb3, $04, nRst, $0E, nBb2, $10, nRst, $02, nG3, $04, nRst, $02
	dc.b	nC4, $04, nRst, $08, nBb3, $06, nEb3, $12, nBb2, $10, nRst, $02
	dc.b	nBb2, $04, nRst, $0E, nG2, $10, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $08, nC4, $04, nRst, $02, nEb4, $10, nRst, $02
	dc.b	nG2, $10, nRst, $02, nF2, $04, nRst, $0E, nG2, $10, nRst, $02
	dc.b	nG3, $04, nRst, $02, nD4, $04, nRst, $08, nC4, $04, nRst, $02
	dc.b	nEb3, $0C, nRst, $06, nEb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nBb2, $04, nRst, $02, nEb3, $04, nRst, $1A, nFs4, $0C, nEb3, $04
	dc.b	nRst, $02, nEb3, $04, nRst, $02, nBb2, $04, nRst, $02, nEb3, $0A
	dc.b	nFs3, $02, nF3, nEb3, nC3, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nF3, $04, nRst, $02, nG3, $04, nRst, $1A, nBb4, $0C, nG3
	dc.b	$04, nRst, $02, nG3, $04, nRst, $02, nF3, $04, nRst, $02, nG3
	dc.b	$0A, nBb3, $02, nG3, nF3, nEb3, nEb3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $02, nBb2, $04, nRst, $02, nEb3, $04, nRst, $1A, nC5, $0C
	dc.b	nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nBb2, $04, nRst, $02
	dc.b	nEb3, $0A, nFs3, $02, nF3, nEb3, nC3, nG3, $04, nRst, $02, nG3
	dc.b	$04, nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst, $1A, nBb4
	dc.b	$0C, nG3, $04, nRst, $02, nG3, $04, nRst, $02, nF3, $04, nRst
	dc.b	$02, nG3, $0A, nBb3, $02, nG3, nF3, nEb3, nEb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nBb2, $04, nRst, $02, nEb3, $04, nRst, $1A
	dc.b	nFs4, $0C, nEb3, $04, nRst, $02, nEb3, $04, nRst, $02, nBb2, $04
	dc.b	nRst, $02, nEb3, $0A, nFs3, $02, nF3, nEb3, nC3, nG3, $04, nRst
	dc.b	$02, nG3, $04, nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$1A, nC5, $0C, nG3, $04, nRst, $02, nG3, $04, nRst, $02, nF3
	dc.b	$04, nRst, $02, nG3, $0A, nBb3, $02, nG3, nF3, nEb3, nCs3, $04
	dc.b	nRst, $02, nCs3, $04, nRst, $02, nBb2, $04, nRst, $02, nCs3, $04
	dc.b	nRst, $1A, nB4, $0C, nCs3, $04, nRst, $02, nCs3, $04, nRst, $02
	dc.b	nBb2, $04, nRst, $02, nCs3, $0A, nFs3, $02, nF3, nEb3, nC3, nG3
	dc.b	$04, nRst, $02, nG3, $04, nRst, $02, nG3, $04, nRst, $02, nG3
	dc.b	$04, nRst, $02, nB3, $24, nG3, $04, nRst, $02, nG3, $04, nRst
	dc.b	$02, nG3, $04, nRst, $02, nG3, $04, nRst, $0E
	smpsDetune          $00
	smpsModOff
	smpsChangeTransposition	-$0C
	smpsSetVol	$05!$7F
	smpsJump            Snd_2PMenu_Jump00

Snd_2PMenu_Call01:
	smpsSetvoice        $03
	dc.b	nRst, $24, nB3, $3C, smpsNoAttack, $3C
	smpsSetvoice        $01
	smpsNoteFill        $06
	dc.b	nG4, $06, nG4
	smpsFMAlterVol      $10
	dc.b	nG4, nRst
	smpsFMAlterVol      $F0
	dc.b	nA4, nRst
	smpsNoteFill        $00
	smpsSetvoice        $03
	dc.b	nB3, $60, smpsNoAttack, $54
	smpsSetvoice        $05
	smpsModSet          $01, $01, $03, $06
	dc.b	nG5, $12
	smpsModOff
	smpsSetvoice        $03
	dc.b	nRst, $1E, nB3, $3C, smpsNoAttack, $3C
	smpsSetvoice        $01
	smpsNoteFill        $06
	dc.b	nG4, $06, nG4
	smpsFMAlterVol      $10
	dc.b	nG4, nRst
	smpsFMAlterVol      $F0
	dc.b	nA4, nRst
	smpsNoteFill        $00
	smpsSetvoice        $03
	dc.b	nB3, $60, smpsNoAttack, $60
	smpsReturn

; PSG1 Data
s3p45_PSG1:
	dc.b	nRst, $30

Snd_2PMenu_Jump03:
	dc.b	nRst, $01
	smpsAlterNote       $FF
	smpsPSGvoice        sTone_1F
	smpsCall            Snd_2PMenu_Call08
	smpsCall            Snd_2PMenu_Call08
	dc.b	nRst, $60, nRst, nRst, nRst, $18, nD5, nE5, $03, nFs5, $15, nD5
	dc.b	$18, nG4, $03, nA4, $2D, nRst, $30, nRst, $18, nA4, $12, nG4
	dc.b	$06, nFs4, $18, nA4, nE4, $24, nRst, $3C, nRst, $60
	smpsCall            Snd_2PMenu_Call08

Snd_2PMenu_Loop05:
	dc.b	nRst, $18, nD5, $0C, nB4, $06, nRst, nG4, $0C, nB4, $06, nRst
	dc.b	nD5, $0C, nB4, $06, nRst
	smpsLoop            $00, $02, Snd_2PMenu_Loop05
	dc.b	nRst, $18, nE5, $0C, nB4, $06, nRst, nG4, $0C, nB4, $06, nRst
	dc.b	nE5, $0C, nB4, $06, nRst, nRst, $5F
	smpsChangeTransposition	$0C
	smpsSetVol	($04!$0F)<<3
	smpsAlterNote       $00

	smpsPSGvoice	sTone_0C
	dc.b	nC4, $06, nRst, nC5, nC4, nRst, $1E, nC4, $06, nRst, nC5, nC4
	dc.b	$0C, nC5, nC4, $06, nRst, nC5, nC4, nRst, $1E, nC4, $06, nRst
	dc.b	nC5, nC4, $0C, nC5, nC4, $06, nRst, nC5, nC4, nRst, $1E, nC4
	dc.b	$06, nRst, nC5, nC4, $0C, nC5, nC4, $06, nRst, nC5, nC4, nRst
	dc.b	$1E, nC4, $06, nRst, nC5, nC4, $0C, nC5, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $3E, nG4, $06, nBb4, nD5
	dc.b	nBb4, nG4, nEb4, nBb3, nBb4, $10, nRst, $02, nBb4, $04, nRst, $0E
	dc.b	nG4, $10, nRst, $02, nEb5, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nEb5, $0E, nRst, $04, nG4, $10, nRst, $02
	dc.b	nG4, $04, nRst, $0E, nEb4, $10, nRst, $02, nC5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nD5, $06, nC5, $12, nD4, $10, nRst, $02
	dc.b	nD4, $04, nRst, $0E, nC4, $10, nRst, $02, nF5, $04, nRst, $02
	dc.b	nBb5, $04, nRst, $08, nAb5, $04, nRst, $02, nG5, $10, nRst, $02
	dc.b	nBb3, $10, nRst, $02, nBb3, $04, nRst, $0E, nBb3, $10, nRst, $02
	dc.b	nBb4, $04, nRst, $02, nF5, $04, nRst, $08, nEb5, $04, nRst, $02
	dc.b	nC5, $0C, nRst, $06, nEb4, $04, nRst, $08, nEb4, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb4, $04, nRst, $02, nEb5, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $02, nEb4, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $02, nG4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG4, $04, nRst, $02, nG5, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $08, nF4, $04, nRst, $02
	dc.b	nF5, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF4, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $02
	smpsChangeTransposition	-$0C
	smpsSetVol	($00!$0F)<<3
	smpsJump            Snd_2PMenu_Jump03

; PSG2 Data
s3p45_PSG2:
	dc.b	nRst, $30

Snd_2PMenu_Jump03b:
	smpsPSGvoice        sTone_1F
	smpsCall            Snd_2PMenu_Call08
	smpsCall            Snd_2PMenu_Call08
	dc.b	nRst, $60, nRst, nRst, nRst, $18, nD5, nE5, $03, nFs5, $15, nD5
	dc.b	$18, nG4, $03, nA4, $2D, nRst, $30, nRst, $18, nA4, $12, nG4
	dc.b	$06, nFs4, $18, nA4, nE4, $24, nRst, $3C, nRst, $60
	smpsCall            Snd_2PMenu_Call08

Snd_2PMenu_Loop05b:
	dc.b	nRst, $18, nD5, $0C, nB4, $06, nRst, nG4, $0C, nB4, $06, nRst
	dc.b	nD5, $0C, nB4, $06, nRst
	smpsLoop            $00, $02, Snd_2PMenu_Loop05b
	dc.b	nRst, $18, nE5, $0C, nB4, $06, nRst, nG4, $0C, nB4, $06, nRst
	dc.b	nE5, $0C, nB4, $06, nRst, nRst, $60
	smpsChangeTransposition	$0C
	smpsSetVol	($04!$0F)<<3

	smpsPSGvoice	sTone_0C
	dc.b	nC4, $06, nRst, nC5, nC4, nRst, $1E, nC4, $06, nRst, nC5, nC4
	dc.b	$0C, nC5, nC4, $06, nRst, nC5, nC4, nRst, $1E, nC4, $06, nRst
	dc.b	nC5, nC4, $0C, nC5, nC4, $06, nRst, nC5, nC4, nRst, $1E, nC4
	dc.b	$06, nRst, nC5, nC4, $0C, nC5, nC4, $06, nRst, nC5, nC4, nRst
	dc.b	$1E, nC4, $06, nRst, nC5, nC4, $0C, nC5, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $0E, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $08, nC5, $04, nRst, $08
	dc.b	nD5, $04, nRst, $08, nEb5, $04, nRst, $08, nD5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nC5, $04, nRst, $02, nD5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $08, nD5, $04, nRst, $3E, nG4, $06, nBb4, nD5
	dc.b	nBb4, nG4, nEb4, nBb3, nBb4, $10, nRst, $02, nBb4, $04, nRst, $0E
	dc.b	nG4, $10, nRst, $02, nEb5, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nF5, $04, nRst, $02, nEb5, $0E, nRst, $04, nG4, $10, nRst, $02
	dc.b	nG4, $04, nRst, $0E, nEb4, $10, nRst, $02, nC5, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nD5, $06, nC5, $12, nD4, $10, nRst, $02
	dc.b	nD4, $04, nRst, $0E, nC4, $10, nRst, $02, nF5, $04, nRst, $02
	dc.b	nBb5, $04, nRst, $08, nAb5, $04, nRst, $02, nG5, $10, nRst, $02
	dc.b	nBb3, $10, nRst, $02, nBb3, $04, nRst, $0E, nBb3, $10, nRst, $02
	dc.b	nBb4, $04, nRst, $02, nF5, $04, nRst, $08, nEb5, $04, nRst, $02
	dc.b	nC5, $0C, nRst, $06, nEb4, $04, nRst, $08, nEb4, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb4, $04, nRst, $02, nEb5, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $02, nEb4, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $02, nG4, $04, nRst, $08, nG4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG4, $04, nRst, $02, nG5, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nEb4, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb5, $04, nRst, $08, nEb4, $04, nRst, $02, nEb5, $04, nRst, $08
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nEb5, $04, nRst, $02, nG4, $04, nRst, $08
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $02, nF4, $04, nRst, $08, nF4, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF5, $04, nRst, $08, nF4, $04, nRst, $02
	dc.b	nF5, $04, nRst, $08, nF4, $04, nRst, $02, nF5, $04, nRst, $08
	dc.b	nF4, $04, nRst, $02, nF4, $04, nRst, $02, nF5, $04, nRst, $02
	dc.b	nG4, $04, nRst, $08, nG4, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG5, $04, nRst, $08, nG4, $04, nRst, $02, nG5, $04, nRst, $08
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $08, nG4, $04, nRst, $02
	dc.b	nG4, $04, nRst, $02, nG5, $04, nRst, $02
	smpsChangeTransposition	-$0C
	smpsSetVol	($01!$0F)<<3
	smpsJump            Snd_2PMenu_Jump03b

Snd_2PMenu_Call08:
	dc.b	nRst, $18, nD5, $0C, nB4, $06, nRst, nG4, $0C, nB4, $06, nRst
	dc.b	nD5, $0C, nB4, $06, nRst
	smpsLoop            $00, $02, Snd_2PMenu_Call08

Snd_2PMenu_Loop06:
	dc.b	nRst, $18, nE5, $0C, nB4, $06, nRst, nG4, $0C, nB4, $06, nRst
	dc.b	nE5, $0C, nB4, $06, nRst
	smpsLoop            $00, $02, Snd_2PMenu_Loop06
	smpsReturn

; PSG3 Data
s3p45_PSG3:
	dc.b	nRst, $30


Snd_2PMenu_Jump02:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_1E
	smpsCall            Snd_2PMenu_Call04
	smpsCall            Snd_2PMenu_Call05
	smpsCall            Snd_2PMenu_Call06
	smpsCall            Snd_2PMenu_Call05
	smpsCall            Snd_2PMenu_Call07
	smpsCall            Snd_2PMenu_Call07
	smpsCall            Snd_2PMenu_Call04
	smpsCall            Snd_2PMenu_Call05
	smpsCall            Snd_2PMenu_Call04
	smpsCall            Snd_2PMenu_Call04
	smpsCall            Snd_2PMenu_Call04
	smpsCall            Snd_2PMenu_Call04
	smpsCall            Snd_2PMenu_Call07
	smpsCall            Snd_2PMenu_Call06
	smpsCall            Snd_2PMenu_Call06
	smpsCall            Snd_2PMenu_Call05
	smpsCall            Snd_2PMenu_Call04
	smpsCall            Snd_2PMenu_Call07
	smpsCall            Snd_2PMenu_Call04
	smpsCall            Snd_2PMenu_Call04
	smpsCall            Snd_2PMenu_Call07
	smpsCall            Snd_2PMenu_Call06
	smpsCall            Snd_2PMenu_Call04
	smpsCall            Snd_2PMenu_Call07
	smpsChangeTransposition	-$2E
	smpsSetVol	($04!$0F)<<3

	smpsPSGvoice        sTone_02
	smpsPSGform         $E7
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, $04, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $04, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	$04, nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $04
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $04, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, $04, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, $06, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1, nMaxPSG1
	dc.b	nMaxPSG1, nMaxPSG1, nMaxPSG1, nRst, $60
	smpsChangeTransposition	$2E
	smpsSetVol	($00!$0F)<<3
	smpsJump            Snd_2PMenu_Jump02

Snd_2PMenu_Call04:
	smpsPSGvoice        sTone_1E
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF, $0C
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG1-$2E)&$FF, (nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF, (nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_27
	dc.b	(nMaxPSG1-$2E)&$FF, $06, nRst
	smpsReturn

Snd_2PMenu_Call05:
	smpsPSGvoice        sTone_1E
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF, $0C
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG1-$2E)&$FF, (nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF, (nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG1-$2E)&$FF, $06, (nMaxPSG1-$2E)&$FF
	smpsReturn

Snd_2PMenu_Call06:
	smpsPSGvoice        sTone_1E
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF, $0C
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG1-$2E)&$FF, (nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF, (nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG1-$2E)&$FF, $06
	smpsPSGvoice        sTone_27
	dc.b	(nMaxPSG1-$2E)&$FF
	smpsReturn

Snd_2PMenu_Call07:
	smpsPSGvoice        sTone_1E
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF, $0C
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG1-$2E)&$FF, (nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $02
	dc.b	(nMaxPSG1-$2E)&$FF, (nMaxPSG1-$2E)&$FF
	smpsPSGAlterVol     $FE
	smpsPSGvoice        sTone_27
	dc.b	(nMaxPSG1-$2E)&$FF
	smpsReturn

s3p45_Voices:
;	Voice $00
;	$00
;	$27, $33, $30, $21, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $0F, 	$19, $37, $10, $84
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $03, $03, $02
	smpsVcCoarseFreq    $01, $00, $03, $07
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $00, $01, $01, $02
	smpsVcReleaseRate   $0F, $00, $00, $00
	smpsVcTotalLevel    $84, $10, $37, $19

;	Voice $01
;	$05
;	$30, $52, $01, $31, 	$51, $53, $52, $53, 	$05, $00, $00, $00
;	$00, $00, $00, $00, 	$1F, $0F, $0F, $0F, 	$0C, $90, $90, $90
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $05, $03
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $90, $90, $90, $0C

;	Voice $02
;	$2E
;	$05, $77, $58, $02, 	$1F, $1F, $14, $14, 	$00, $00, $00, $00
;	$08, $0B, $09, $06, 	$0F, $0F, $0F, $0F, 	$18, $90, $90, $90
	smpsVcAlgorithm     $06
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $07, $00
	smpsVcCoarseFreq    $02, $08, $07, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $06, $09, $0B, $08
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $90, $90, $90, $18

;	Voice $03
;	$2C
;	$71, $62, $31, $32, 	$5F, $54, $5F, $5F, 	$00, $09, $00, $09
;	$00, $03, $00, $03, 	$0F, $8F, $0F, $AF, 	$16, $8B, $11, $8B
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $06, $07
	smpsVcCoarseFreq    $02, $01, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $14, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $00, $09, $00
	smpsVcDecayRate2    $03, $00, $03, $00
	smpsVcDecayLevel    $0A, $00, $08, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $8B, $11, $8B, $16

;	Voice $04
;	$03
;	$02, $02, $02, $02, 	$1F, $1F, $1F, $1F, 	$08, $08, $00, $0E
;	$00, $00, $00, $05, 	$3F, $3F, $0F, $7F, 	$81, $20, $1D, $82
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $00, $08, $08
	smpsVcDecayRate2    $05, $00, $00, $00
	smpsVcDecayLevel    $07, $00, $03, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $82, $1D, $20, $81

;	Voice $05
;	$04
;	$22, $02, $21, $02, 	$18, $0B, $19, $08, 	$00, $05, $04, $00
;	$00, $00, $00, $00, 	$0F, $FF, $4F, $0F, 	$20, $90, $20, $88
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $00, $02
	smpsVcCoarseFreq    $02, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $08, $19, $0B, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $04, $05, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $04, $0F, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $88, $20, $90, $20

;	Voice $06
;	$00
;	$38, $1C, $1E, $1F, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $0C
;	$00, $00, $00, $0C, 	$0F, $0F, $0F, $1F, 	$00, $3D, $00, $88
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $01, $03
	smpsVcCoarseFreq    $0F, $0E, $0C, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $00, $00, $00
	smpsVcDecayRate2    $0C, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $88, $00, $3D, $00

;	Voice $07
;	$00
;	$70, $30, $13, $01, 	$1F, $1F, $0E, $1F, 	$00, $0B, $0E, $00
;	$08, $01, $10, $12, 	$0F, $1F, $FF, $0F, 	$15, $1E, $94, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $03, $07
	smpsVcCoarseFreq    $01, $03, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $0E, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0E, $0B, $00
	smpsVcDecayRate2    $12, $10, $01, $08
	smpsVcDecayLevel    $00, $0F, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $94, $1E, $15

;	Voice $08
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $07, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $27, $28, $18

;	Voice $09
;	$3A
;	$31, $25, $73, $41, 	$5F, $1F, $1F, $9C, 	$08, $05, $04, $1E
;	$03, $04, $02, $06, 	$2F, $2F, $1F, $0F, 	$29, $27, $1F, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $02, $03
	smpsVcCoarseFreq    $01, $03, $05, $01
	smpsVcRateScale     $02, $00, $00, $01
	smpsVcAttackRate    $1C, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1E, $04, $05, $08
	smpsVcDecayRate2    $06, $02, $04, $03
	smpsVcDecayLevel    $00, $01, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1F, $27, $29

;	Voice $0A
;	$28
;	$71, $00, $30, $01, 	$1F, $1F, $1D, $1F, 	$06, $06, $06, $05
;	$05, $05, $02, $05, 	$4F, $4F, $2F, $3F, 	$1E, $28, $1E, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $06, $06, $06
	smpsVcDecayRate2    $05, $02, $05, $05
	smpsVcDecayLevel    $03, $02, $04, $04
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $1E, $28, $1E

;	Voice $0B
;	$39
;	$32, $31, $72, $71, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$1B, $32, $28, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $28, $32, $1B

;	Voice $0C
;	$07
;	$34, $74, $32, $71, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $05, $03
;	$00, $00, $00, $00, 	$3F, $3F, $2F, $2F, 	$8A, $8A, $80, $80
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
	smpsVcTotalLevel    $80, $80, $8A, $8A

;	Voice $0D
;	$3A
;	$31, $37, $31, $31, 	$8D, $8D, $8E, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$17, $28, $26, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0E, $0D, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $26, $28, $17

