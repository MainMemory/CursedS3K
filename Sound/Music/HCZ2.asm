Snd_HCZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Mus82_LZ_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $25

	smpsHeaderDAC       Snd_HCZ2_DAC
	smpsHeaderFM        Snd_HCZ2_FM1,	$18, $0F
	smpsHeaderFM        Snd_HCZ2_FM2,	$18, $0A
	smpsHeaderFM        Snd_HCZ2_FM3,	$18, $13
	smpsHeaderFM        Snd_HCZ2_FM4,	$0C, $0F
	smpsHeaderFM        Snd_HCZ2_FM5,	$0C, $0C
	smpsHeaderPSG       Snd_HCZ2_PSG1,	$F4, $04, $00, fTone_0C
	smpsHeaderPSG       Snd_HCZ2_PSG2,	$F4, $04, $00, fTone_0C
	smpsHeaderPSG       Snd_HCZ2_PSG3,	$00, $03, $00, fTone_0C

; DAC Data
Snd_HCZ2_DAC:
	dc.b	dKick, $06
	smpsPan             panLeft, $00
	dc.b	dHiTom, $02, dHiTom, $04, dHiTom, $06, dHiTom, dHiTom, dHiTom
	smpsPan             panCenter, $00
	dc.b	dMidTom, dMidTom, dMidTom, dMidTom, dMidTom, dLowTom
	smpsPan             panRight, $00
	dc.b	dLowTom, $02, dLowTom, $04, dLowTom, $06, dFloorTom, dFloorTom
	smpsPan             panCenter, $00
	dc.b	dKick, $0C, dSnare, $1E, dKick, $0C, dKick, $12, dKick, $0C, dSnare
	smpsLoop            $00, $02, Snd_HCZ2_DAC

Snd_HCZ2_Loop00:
	dc.b	dKick, $18, dSnare, $06, dKick, $0C, dKick, dKick, $12, dSnare, $0C, dKick
	smpsLoop            $00, $03, Snd_HCZ2_Loop00
	dc.b	dKick, $24, dSnare, $06, dKick, $0C, dKick, $12, dKick, $0C, dSnare

Snd_HCZ2_Loop01:
	dc.b	dKick, $18, dSnare, $06, dKick, $0C, dKick, dKick, $12, dSnare, $0C, dKick
	smpsLoop            $00, $02, Snd_HCZ2_Loop01
	dc.b	dKick, $18, dSnare, $06, dKick, $0C, dKick, dKick, $12, dSnare, $0C, dKick
	dc.b	$06, dSnare, $0C, dKick, dKick, $06, dHiTom, dMidTom, dLowTom, dSnare, $18, $0C
	dc.b	$02, $04, $06, dSnare
	smpsCall            Snd_HCZ2_Call00
	dc.b	dKick, $18, dSnare, $06, dKick, $0C, dKick, $1E, dSnare, $0C, dKick, $12
	dc.b	dSnare, dSnare, $0C, dSnare, $06, dSnare, $0C, dSnare, $12, dSnare, $06, dSnare
	dc.b	dSnare, dSnare
	smpsCall            Snd_HCZ2_Call00
	dc.b	dKick, $18, dSnare, $06, dKick, $0C, dKick, $1E, dSnare, $0C, dKick, $06
	dc.b	dKick, $0C, dKick, dKick, $06, dSnare, dKick, dKick, dSnare, dKick, dKick, $0C
	dc.b	dSnare, dSnare, $06, dSnare, dSnare

Snd_HCZ2_Loop02:
	smpsCall            Snd_HCZ2_Call01
	smpsLoop            $00, $02, Snd_HCZ2_Loop02
	smpsCall            Snd_HCZ2_Call01
	dc.b	dKick, $0C, dSnare, dKick, $06, dSnare, $0C, $06, dKick, dSnare, $12, $04
	dc.b	dSnare, dSnare, dSnare, $06, dSnare

Snd_HCZ2_Loop03:
	smpsCall            Snd_HCZ2_Call01
	smpsLoop            $00, $02, Snd_HCZ2_Loop03
	dc.b	dKick, $12, $06, dSnare, $1E, dKick, $06, $0C, dSnare, $1E, $0C, $0C
	dc.b	$06, $0C, $18, $02, $02, $02, $06, $06, $06
	smpsJump            Snd_HCZ2_DAC

Snd_HCZ2_Call00:
	dc.b	dKick, $18, dSnare, $06, dKick, $0C, dKick, $1E, dSnare, $0C, dKick, dKick
	dc.b	$18, dSnare, $06, dKick, $0C, dKick, $1E, dSnare, $0C, dKick
	smpsReturn

Snd_HCZ2_Call01:
	dc.b	dKick, $12, dKick, $06, dSnare, $1E, dKick, $06, dKick, $0C, dSnare, $18
	smpsReturn

; FM1 Data
Snd_HCZ2_FM1:
	smpsSetvoice        $00
	smpsAlterNote       $FE
	smpsModSet          $0F, $01, $06, $06
	smpsCall            Snd_HCZ2_Call02
	smpsSetvoice        $01
	smpsAlterNote       $01
	smpsModSet          $0F, $01, $06, $06
	smpsCall            Snd_HCZ2_Call03
	smpsSetvoice        $00
	smpsAlterNote       $FE
	smpsModSet          $0F, $01, $06, $06
	smpsCall            Snd_HCZ2_Call04
	smpsJump            Snd_HCZ2_FM1

Snd_HCZ2_Call02:
	dc.b	nRst, $7F, nRst, nRst, $76, nG4, $06, nBb4, nC5, nG4, nF4, $02
	dc.b	nEb4, nD4, nC4, nBb3, nA3, nG3, nRst, $04, nBb3, $06, nC4, nG3
	dc.b	nF3, $02, nFs3, $04, nF3, $06, nEb3, nC3, nG3, $02, nA3, nBb3
	dc.b	$08, nBb3, $02, nBb3, $04, nA3, $12, nG3, $02, nFs3, nF3, nEb3
	dc.b	nD3, nC3, nBb2, nA2, nG2, nRst, $36, nBb3, $06, nB3, nC4, nFs3
	dc.b	$02, nG3, $04, nF3, $02, nEb3, nC3, nBb2, nA2, nG2, nF2, nEb2
	dc.b	$04, nF3, $02, nFs3, $04, nF3, $06, nEb3, nF3, nEb3, nC3, nBb2
	dc.b	nG3, $0C, nG3, $06, nC4, $12, nA3, $02, nG3, nF3, nEb3, nD3
	dc.b	nC3, nRst, $3C, nG4, $06, nBb4, nC5, nG4, nF4, $02, nEb4, nD4
	dc.b	nC4, nBb3, nA3, nG3, nRst, $04, nBb3, $06, nC4, nG3, nF3, $02
	dc.b	nFs3, $04, nF3, $06, nEb3, nC3, nG3, $02, nA3, nBb3, $08, nBb3
	dc.b	$02, nBb3, $04, nA3, $12, nG3, $02, nF3, nEb3, nD3, nC3, nBb2
	dc.b	nA2, nG2, nF2, nRst, $36, nBb3, $06, nB3, nC4, nFs3, $02, nG3
	dc.b	$04, nF3, $02, nEb3, nC3, nBb2, nA2, nG2, nF2, nEb2, $04, nF3
	dc.b	$02, nFs3, $04, nF3, $06, nEb3, nF3, nEb3, nC3, nBb2, nG3, $0C
	dc.b	nG3, $06, nEb3, $12, nD3, $02, nC3, nBb2, nA2, nG2, nF2, nRst
	dc.b	$1E
	smpsReturn

Snd_HCZ2_Call03:
	smpsAlterPitch      $F4
	dc.b	nF3, $06, nFs3, $02, nG3, $04, nBb3, $06, nEb4, nF4, nG4, nBb4
	dc.b	nD5, $02, nEb5, $08, nRst, $02, nF5, $04, nRst, $02, nFs5, nG5
	dc.b	$08, nRst, $02, nC5, $0A, nRst, $02, nFs5, nG5, $26, nRst, $02
	dc.b	nF5, $04, nRst, $02, nEb5, $04, nRst, $02, nCs5, nD5, $26, nRst
	dc.b	$02, nBb4, $34, nRst, $02, nCs5, nD5, $08, nRst, $02, nEb5, $04
	dc.b	nRst, $02, nE5, nF5, $08, nRst, $02, nBb4, $0A, nRst, $02, nF5
	dc.b	nF5, $26, nRst, $02, nEb5, $04, nRst, $02, nD5, $04, nRst, $02
	dc.b	nC5, $2E, nRst, $08, nD5, $10, nRst, $02, nEb5, $0A, nRst, $02
	dc.b	nF5, $0A, nRst, $02, nD5, nEb5, $08, nRst, $02, nF5, $04, nRst
	dc.b	$02, nFs5, nG5, $08, nRst, $02, nC5, $0A, nRst, $02, nG5, $28
	dc.b	nRst, $02, nF5, $04, nRst, $02, nEb5, $04, nRst, $02, nCs5, nD5
	dc.b	$26, nRst, $02, nEb5, $1C, nRst, $0E, nEb5, $04, nRst, $02, nF5
	dc.b	$04, nRst, $02, nFs5, nG5, $08, nRst, $02, nEb5, $04, nRst, $02
	dc.b	nG5, $0A, nRst, $02, nBb4, $0A, nRst, $02, nC5, $28, nRst, $02
	dc.b	nEb5, $04, nRst, $02, nF5, $04, nRst, $02, nG5, $2E, nRst, $02
	dc.b	nF5, $12, nEb5, $02, nD5, nC5, nBb4, nAb4, nG4, nF4, nEb4, nD4
	smpsReturn

Snd_HCZ2_Call04:
	smpsAlterPitch      $0C
	dc.b	nC4, $04, nRst, $02, nD4, $04, nRst, $02, nEb4, $0C, nD4, $02
	dc.b	nC4, nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst
	dc.b	$02, nE4, nF4, nRst, $08, nD4, $10, nRst, $02, nC4, $04, nRst
	dc.b	$08, nBb3, $04, nRst, $08, nFs3, $02, nG3, $14, nRst, $02, nFs3
	dc.b	nG3, $08, nRst, $02, nF3, $04, nRst, $02, nFs3, nG3, $28, nC4
	dc.b	$04, nRst, $02, nD4, $04, nRst, $02, nEb4, $0C, nD4, $02, nC4
	dc.b	nBb3, nAb3, nG3, nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst, $02
	dc.b	nE4, nF4, nRst, $08, nD4, $10, nRst, $02, nC4, $04, nRst, $08
	dc.b	nB3, $04, nRst, $08, nC4, $10, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $0A, nRst, $02, nC4, $04, nRst, $02, nD4, $04, nRst, $08
	dc.b	nEb4, $10, nRst, $02, nF4, $0A, nRst, $02, nC4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nEb4, $0C, nD4, $02, nC4, nBb3, nAb3, nG3
	dc.b	nF3, nC4, $0A, nRst, $02, nEb4, $04, nRst, $02, nE4, nF4, nRst
	dc.b	$08, nD4, $10, nRst, $02, nC4, $04, nRst, $08, nBb3, $04, nRst
	dc.b	$08, nFs3, $02, nG3, $14, nRst, $02, nFs3, nG3, $08, nRst, $02
	dc.b	nF3, $04, nRst, $02, nFs3, nG3, $28, nC4, $04, nRst, $02, nD4
	dc.b	$04, nRst, $02, nEb4, $10, nRst, $02, nEb4, $04, nRst, $08, nD4
	dc.b	$04, nRst, $02, nEb4, $10, nRst, $02, nEb4, $04, nRst, $02, nF4
	dc.b	$0A, nRst, $02, nEb4, $04, nRst, $08, nAb4, $04, nRst, $0E, nC5
	dc.b	$04, nRst, $08, nC5, $04, nRst, $08, nC5, $04, nRst, $02, nC5
	dc.b	$0A, nRst, $02, nB4, $04, nRst, $2C
	smpsReturn

; FM2 Data
Snd_HCZ2_FM2:
	smpsSetvoice        $02
	smpsAlterNote       $00
	smpsModSet          $0F, $01, $06, $06
	dc.b	nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1, $10, nRst, $02, nEb1
	dc.b	nRst, $04, nF1, nRst, $08, nEb1, $10, nRst, $02, nF1, $16, nRst
	dc.b	$02, nC1, $0A, nRst, $02, nA0, nRst, $04, nC1, $12, nA0, $04
	dc.b	nRst, $02, nBb0, $04, nRst, $08, nG0, $10, nRst, $02, nBb0, $16
	dc.b	nRst, $02, nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1, $10, nRst
	dc.b	$02, nEb1, nRst, $04, nF1, nRst, $08, nEb1, $10, nRst, $02, nF1
	dc.b	$16, nRst, $02, nC1, $0A, nRst, $02, nA0, nRst, $04, nC1, $12
	dc.b	nA0, $04, nRst, $02, nBb0, $04, nRst, $08, nG0, $10, nRst, $02
	dc.b	nBb0, $16, nRst, $02, nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1
	dc.b	$10, nRst, $02, nEb1, nRst, $04, nF1, nRst, $08, nEb1, $10, nRst
	dc.b	$02, nF1, $16, nRst, $02, nC1, $0A, nRst, $02, nA0, nRst, $04
	dc.b	nC1, $12, nA0, $04, nRst, $02, nBb0, $04, nRst, $08, nG0, $10
	dc.b	nRst, $02, nBb0, $16, nRst, $02, nC1, $0A, nRst, $02, nEb1, nRst
	dc.b	$04, nC1, $10, nRst, $02, nEb1, nRst, $04, nF1, nRst, $08, nEb1
	dc.b	$10, nRst, $02, nF1, $16, nRst, $02, nC1, $0A, nRst, $02, nA0
	dc.b	nRst, $04, nC1, $12, nA0, $04, nRst, $02, nBb0, $04, nRst, $08
	dc.b	nG0, $10, nRst, $02, nBb0, $16, nRst, $02, nC1, $0A, nRst, $02
	dc.b	nEb1, nRst, $04, nC1, $10, nRst, $02, nEb1, $04, nRst, $02, nF1
	dc.b	$04, nRst, $08, nEb1, $10, nRst, $02, nF1, $16, nRst, $02, nC1
	dc.b	$0A, nRst, $02, nA0, nRst, $04, nC1, $12, nA0, $04, nRst, $02
	dc.b	nBb0, $04, nRst, $08, nG0, $10, nRst, $02, nBb0, $16, nRst, $02
	dc.b	nC1, $0A, nRst, $02, nEb1, nRst, $04, nC1, $10, nRst, $02, nEb1
	dc.b	$04, nRst, $02, nF1, $04, nRst, $08, nEb1, $10, nRst, $02, nF1
	dc.b	$10, nRst, $02, nEb1, $04, nRst, $08, nC2, $04, nRst, $02, nBb1
	dc.b	$04, nRst, $02, nG1, $04, nRst, $02, nF1, $04, nFs1, nF1, nEb1
	dc.b	$06, nC1, $04, nRst, $14, nG0, $1C, nRst, $02, nAb0, $0A, nRst
	dc.b	$02, nAb0, nRst, $04, nAb1, nRst, $08, nAb0, $04, nRst, $08, nAb0
	dc.b	$04, nRst, $08, nAb1, $04, nRst, $02, nAb0, $16, nRst, $02, nAb0
	dc.b	$04, nRst, $08, nG0, $0A, nRst, $02, nG0, nRst, $04, nG1, nRst
	dc.b	$08, nG0, $04, nRst, $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b	$02, nG0, $16, nRst, $02, nG0, $04, nRst, $08, nBb0, $0A, nRst
	dc.b	$02, nBb0, nRst, $04, nBb1, nRst, $08, nBb0, $04, nRst, $08, nBb0
	dc.b	$04, nRst, $08, nBb1, $04, nRst, $02, nBb0, $10, nRst, $02, nBb0
	dc.b	nRst, $04, nBb0, nRst, $0E, nC1, $04, nRst, $0E, nC1, $04, nRst
	dc.b	$08, nC2, $04, nRst, $02, nC1, $04, nRst, $08, nC2, $10, nRst
	dc.b	$02, nC1, $0A, nRst, $02, nC2, $0A, nRst, $02, nAb0, $0A, nRst
	dc.b	$02, nAb0, nRst, $04, nAb1, nRst, $08, nAb0, $04, nRst, $08, nAb0
	dc.b	$04, nRst, $08, nAb1, $04, nRst, $02, nAb0, $16, nRst, $02, nAb0
	dc.b	$04, nRst, $08, nG0, $0A, nRst, $02, nG0, nRst, $04, nG1, nRst
	dc.b	$08, nG0, $04, nRst, $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b	$02, nG0, $16, nRst, $02, nG0, $04, nRst, $08, nF0, $0A, nRst
	dc.b	$02, nF0, nRst, $04, nF1, nRst, $08, nF0, $04, nRst, $08, nF0
	dc.b	$04, nRst, $08, nF1, $04, nRst, $02, nF0, $16, nRst, $02, nF0
	dc.b	nRst, $04, nAb0, nRst, $08, nAb0, $04, nRst, $08, nAb0, $04, nRst
	dc.b	$08, nAb0, $04, nRst, $02, nAb0, $0A, nRst, $02, nG0, $04, nRst
	dc.b	$02, nG0, $04, nRst, $08, nG0, $04, nRst, $08, nG1, $04, nRst
	dc.b	$02, nG0, $04, nRst, $02, nG0, $04, nRst, $02, nF0, $10, nRst
	dc.b	$02, nF0, nRst, $22, nG0, $02, nRst, $04, nG1, $0A, nRst, $02
	dc.b	nG0, $16, nRst, $02, nAb0, $10, nRst, $02, nAb0, nRst, $22, nBb0
	dc.b	$02, nRst, $04, nBb1, $0A, nRst, $02, nBb0, $0A, nRst, $02, nBb1
	dc.b	$0A, nRst, $02, nF0, $10, nRst, $02, nF0, nRst, $22, nG0, $02
	dc.b	nRst, $04, nG1, $0A, nRst, $02, nG0, $16, nRst, $02, nC1, $10
	dc.b	nRst, $02, nC2, nRst, $04, nBb0, $10, nRst, $02, nBb1, nRst, $0A
	dc.b	nAb0, $02, nRst, $04, nAb1, $0A, nRst, $02, nG0, $0A, nRst, $02
	dc.b	nG1, $0A, nRst, $02, nF0, $10, nRst, $02, nF0, nRst, $22, nG0
	dc.b	$02, nRst, $04, nG1, $0A, nRst, $02, nG0, $16, nRst, $02, nAb0
	dc.b	$10, nRst, $02, nAb0, nRst, $22, nBb0, $02, nRst, $04, nBb1, $0A
	dc.b	nRst, $02, nBb0, $0A, nRst, $02, nBb1, $0A, nRst, $02, nAb0, $10
	dc.b	nRst, $02, nAb0, nRst, $22, nF0, $02, nRst, $04, nF0, $0A, nRst
	dc.b	$02, nEb0, $0A, nRst, $02, nF0, $0A, nRst, $08, nG0, $04, nRst
	dc.b	$08, nG0, $04, nRst, $08, nG0, $04, nRst, $02, nG0, $0A, nRst
	dc.b	$02, nG0, $04, nRst, $14, nF0, $04, nRst, $02, nFs0, $04, nRst
	dc.b	$02, nG0, $04, nRst, $02, nBb0, $04, nRst, $02
	smpsJump            Snd_HCZ2_FM2

; FM3 Data
Snd_HCZ2_FM3:
	dc.b	nRst, $07

Snd_HCZ2_Jump00:
	smpsSetvoice        $00
	smpsAlterNote       $02
	smpsModSet          $0F, $01, $06, $06
	smpsCall            Snd_HCZ2_Call02
	smpsSetvoice        $01
	smpsAlterNote       $FF
	smpsModSet          $0F, $01, $06, $06
	smpsCall            Snd_HCZ2_Call03
	smpsSetvoice        $00
	smpsAlterNote       $02
	smpsModSet          $0F, $01, $06, $06
	smpsCall            Snd_HCZ2_Call04
	smpsJump            Snd_HCZ2_Jump00

; FM4 Data
Snd_HCZ2_FM4:
	smpsSetvoice        $03
	smpsAlterNote       $01
	smpsModSet          $0A, $01, $03, $06
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $0E, nF3, $04, nRst, $02
	dc.b	nF3, nRst, $04, nF3, $0A, nRst, $02, nF3, $0A, nRst, $02, nBb2
	dc.b	$04, nRst, $02, nF3, $04, nRst, $08, nF3, $04, nRst, $08, nEb3
	dc.b	$04, nRst, $08, nEb3, $04, nRst, $0E, nEb3, $04, nRst, $02, nEb3
	dc.b	nRst, $04, nE3, nRst, $08, nE3, $10, nRst, $02, nE3, $04, nRst
	dc.b	$08, nE3, $04, nRst, $08, nF3, $04, nRst, $08, nF3, $04, nRst
	dc.b	$0E, nF3, $04, nRst, $02, nF3, nRst, $04, nF3, $0A, nRst, $02
	dc.b	nF3, $0A, nRst, $02, nBb2, $04, nRst, $02, nF3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nEb3, $04, nRst, $08, nEb3, $04, nRst, $0E
	dc.b	nEb3, $04, nRst, $02, nEb3, nRst, $04, nE3, nRst, $08, nE3, $10
	dc.b	nRst, $02, nE3, $04, nRst, $08, nE3, $04, nRst, $08, nF3, $04
	dc.b	nRst, $08, nF3, $04, nRst, $0E, nF3, $04, nRst, $02, nF3, nRst
	dc.b	$04, nF3, $0A, nRst, $02, nF3, $0A, nRst, $02, nBb2, $04, nRst
	dc.b	$02, nF3, $04, nRst, $08, nF3, $04, nRst, $08, nEb3, $04, nRst
	dc.b	$08, nEb3, $04, nRst, $0E, nEb3, $04, nRst, $02, nEb3, nRst, $04
	dc.b	nE3, nRst, $08, nE3, $10, nRst, $02, nE3, $04, nRst, $08, nE3
	dc.b	$04, nRst, $08, nF3, $04, nRst, $08, nF3, $04, nRst, $0E, nF3
	dc.b	$04, nRst, $02, nF3, nRst, $04, nF3, $0A, nRst, $02, nF3, $0A
	dc.b	nRst, $02, nBb2, $04, nRst, $02, nF3, $04, nRst, $08, nF3, $04
	dc.b	nRst, $08, nEb3, $04, nRst, $08, nEb3, $04, nRst, $0E, nEb3, $04
	dc.b	nRst, $02, nEb3, nRst, $04, nE3, nRst, $08, nE3, $10, nRst, $02
	dc.b	nE3, $04, nRst, $08, nE3, $04, nRst, $08, nF3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $0E, nF3, $04, nRst, $02, nF3, nRst, $04, nF3
	dc.b	$0A, nRst, $02, nF3, $0A, nRst, $02, nBb2, $04, nRst, $02, nF3
	dc.b	$04, nRst, $08, nF3, $04, nRst, $08, nEb3, $04, nRst, $08, nEb3
	dc.b	$04, nRst, $0E, nEb3, $04, nRst, $02, nEb3, nRst, $04, nE3, nRst
	dc.b	$08, nE3, $10, nRst, $02, nE3, $04, nRst, $08, nE3, $04, nRst
	dc.b	$08, nF3, $04, nRst, $08, nF3, $04, nRst, $0E, nF3, $04, nRst
	dc.b	$02, nF3, nRst, $04, nF3, $0A, nRst, $02, nF3, $0A, nRst, $02
	dc.b	nBb2, $04, nRst, $02, nF3, $04, nRst, $08, nF3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $08, nC4, $06, nBb3, nG3, nF3, $04, nFs3, nF3
	dc.b	nEb3, $06, nC3, nRst, $12, nF3, $1E, nEb3, $0A, nRst, $02, nD3
	dc.b	$04, nRst, $02, nEb3, $0A, nRst, $02, nD3, $0A, nRst, $02, nEb3
	dc.b	$04, nRst, $0E, nC4, $04, nRst, $02, nC4, $04, nRst, $08, nD4
	dc.b	$02, nRst, $04, nEb4, $0A, nRst, $02, nD3, $0A, nRst, $02, nF3
	dc.b	$04, nRst, $02, nD3, $0A, nRst, $02, nF3, $0A, nRst, $02, nD3
	dc.b	$04, nRst, $0E, nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nC4
	dc.b	$02, nRst, $04, nD4, $0A, nRst, $02, nD3, $0A, nRst, $02, nC3
	dc.b	$04, nRst, $02, nD3, $0A, nRst, $02, nC3, $0A, nRst, $02, nD3
	dc.b	$04, nRst, $0E, nD4, $04, nRst, $02, nD4, $04, nRst, $08, nEb4
	dc.b	$02, nRst, $04, nF4, $0A, nRst, $08, nBb3, $04, nRst, $0E, nBb3
	dc.b	$0A, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nBb3
	dc.b	$10, nRst, $02, nEb3, $0A, nRst, $02, nF3, $0A, nRst, $02, nEb3
	dc.b	$0A, nRst, $02, nD3, $04, nRst, $02, nEb3, $0A, nRst, $02, nD3
	dc.b	$0A, nRst, $02, nEb3, $04, nRst, $0E, nC4, $04, nRst, $02, nC4
	dc.b	$04, nRst, $08, nD4, $02, nRst, $04, nEb4, $0A, nRst, $02, nD3
	dc.b	$0A, nRst, $02, nF3, $04, nRst, $02, nD3, $0A, nRst, $02, nF3
	dc.b	$0A, nRst, $02, nBb2, $04, nRst, $0E, nBb3, $04, nRst, $02, nBb3
	dc.b	$04, nRst, $08, nEb4, $02, nRst, $04, nG4, $0A, nRst, $02, nEb3
	dc.b	$0A, nRst, $02, nBb2, $04, nRst, $02, nEb3, $0A, nRst, $02, nBb2
	dc.b	$0A, nRst, $02, nC3, $04, nRst, $0E, nA3, $04, nRst, $02, nA3
	dc.b	$04, nRst, $08, nC4, $02, nRst, $04, nEb4, $0A, nRst, $08, nEb4
	dc.b	$04, nRst, $08, nEb4, $04, nRst, $08, nEb4, $04, nRst, $02, nEb4
	dc.b	$0A, nRst, $02, nB3, $04, nRst, $02, nB3, $04, nRst, $08, nB3
	dc.b	$04, nRst, $0E, nEb3, $04, nRst, $02, nF3, $04, nRst, $08, nG3
	dc.b	$04, nRst, $02, nF3, $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nC3, $04, nRst, $08, nBb3
	dc.b	$10, nRst, $02, nG3, $04, nRst, $08, nF3, $04, nRst, $0E, nD4
	dc.b	$04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nEb3
	dc.b	$10, nRst, $02, nD3, $34, nRst, $08, nG3, $04, nRst, $02, nF3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $08, nD3, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $02, nC3, $04, nRst, $08, nB3, $10, nRst, $02, nG3
	dc.b	$04, nRst, $08, nF3, $04, nRst, $08, nG3, $16, nRst, $02, nBb3
	dc.b	$10, nRst, $02, nBb3, $04, nRst, $08, nAb3, $10, nRst, $02, nG3
	dc.b	$16, nRst, $08, nG3, $04, nRst, $02, nF3, $04, nRst, $02, nEb3
	dc.b	$04, nRst, $08, nD3, $04, nRst, $02, nEb3, $04, nRst, $02, nC3
	dc.b	$04, nRst, $08, nBb3, $10, nRst, $02, nG3, $04, nRst, $08, nF3
	dc.b	$04, nRst, $0E, nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3
	dc.b	$04, nRst, $02, nEb3, $10, nRst, $02, nD3, $34, nRst, $08, nG3
	dc.b	$04, nRst, $02, nF3, $04, nRst, $02, nEb3, $04, nRst, $08, nD3
	dc.b	$04, nRst, $02, nEb3, $04, nRst, $02, nC3, $04, nRst, $08, nEb2
	dc.b	$04, nRst, $02, nAb2, $04, nRst, $02, nEb2, $04, nRst, $02, nEb3
	dc.b	$0A, nRst, $02, nAb3, $0A, nRst, $08, nG3, $04, nRst, $08, nG3
	dc.b	$04, nRst, $08, nG3, $04, nRst, $02, nG3, $0A, nRst, $02, nG3
	dc.b	$04, nRst, $2C
	smpsJump            Snd_HCZ2_FM4

; FM5 Data
Snd_HCZ2_FM5:
	smpsSetvoice        $03
	smpsAlterNote       $FF
	smpsModSet          $0A, $01, $03, $06
	dc.b	nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E, nBb2, $04, nRst, $02
	dc.b	nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2, $0A, nRst, $08, nBb2
	dc.b	$04, nRst, $08, nBb2, $04, nRst, $08, nA2, $04, nRst, $08, nA2
	dc.b	$04, nRst, $0E, nA2, $04, nRst, $02, nA2, nRst, $04, nBb2, nRst
	dc.b	$08, nBb2, $10, nRst, $02, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b	$08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E, nBb2, $04, nRst
	dc.b	$02, nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2, $0A, nRst, $08
	dc.b	nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nA2, $04, nRst, $08
	dc.b	nA2, $04, nRst, $0E, nA2, $04, nRst, $02, nA2, nRst, $04, nBb2
	dc.b	nRst, $08, nBb2, $10, nRst, $02, nBb2, $04, nRst, $08, nBb2, $04
	dc.b	nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E, nBb2, $04
	dc.b	nRst, $02, nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2, $0A, nRst
	dc.b	$08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nA2, $04, nRst
	dc.b	$08, nA2, $04, nRst, $0E, nA2, $04, nRst, $02, nA2, nRst, $04
	dc.b	nBb2, nRst, $08, nBb2, $10, nRst, $02, nBb2, $04, nRst, $08, nBb2
	dc.b	$04, nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E, nBb2
	dc.b	$04, nRst, $02, nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2, $0A
	dc.b	nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nA2, $04
	dc.b	nRst, $08, nA2, $04, nRst, $0E, nA2, $04, nRst, $02, nA2, nRst
	dc.b	$04, nBb2, nRst, $08, nBb2, $10, nRst, $02, nBb2, $04, nRst, $08
	dc.b	nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $0E
	dc.b	nBb2, $04, nRst, $02, nBb2, nRst, $04, nBb2, $0A, nRst, $02, nBb2
	dc.b	$0A, nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nA2
	dc.b	$04, nRst, $08, nA2, $04, nRst, $0E, nA2, $04, nRst, $02, nA2
	dc.b	nRst, $04, nBb2, nRst, $08, nBb2, $10, nRst, $02, nBb2, $04, nRst
	dc.b	$08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst
	dc.b	$0E, nBb2, $04, nRst, $02, nBb2, nRst, $04, nBb2, $0A, nRst, $02
	dc.b	nBb2, $0A, nRst, $08, nBb2, $04, nRst, $08, nBb2, $04, nRst, $02
	dc.b	nBb2, $04, nRst, $44, nB2, $1E, nC3, $0A, nRst, $02, nBb2, $04
	dc.b	nRst, $02, nC3, $0A, nRst, $02, nBb2, $0A, nRst, $02, nC3, $04
	dc.b	nRst, $0E, nAb3, $04, nRst, $02, nAb3, $04, nRst, $08, nBb3, $02
	dc.b	nRst, $04, nC4, $0A, nRst, $02, nBb2, $0A, nRst, $02, nD3, $04
	dc.b	nRst, $02, nBb2, $0A, nRst, $02, nD3, $0A, nRst, $02, nBb2, $04
	dc.b	nRst, $0E, nG3, $04, nRst, $02, nG3, $04, nRst, $08, nAb3, $02
	dc.b	nRst, $04, nBb3, $0A, nRst, $02, nBb2, $0A, nRst, $02, nAb2, $04
	dc.b	nRst, $02, nBb2, $0A, nRst, $02, nAb2, $0A, nRst, $02, nBb2, $04
	dc.b	nRst, $0E, nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nC4, $02
	dc.b	nRst, $04, nD4, $0A, nRst, $08, nG3, $04, nRst, $0E, nF3, $0A
	dc.b	nRst, $02, nF3, $04, nRst, $02, nG3, $04, nRst, $08, nD3, $10
	dc.b	nRst, $02, nC3, $0A, nRst, $02, nD3, $0A, nRst, $02, nC3, $0A
	dc.b	nRst, $02, nBb2, $04, nRst, $02, nC3, $0A, nRst, $02, nBb2, $0A
	dc.b	nRst, $02, nC3, $04, nRst, $0E, nAb3, $04, nRst, $02, nAb3, $04
	dc.b	nRst, $08, nBb3, $02, nRst, $04, nC4, $0A, nRst, $02, nBb2, $0A
	dc.b	nRst, $02, nD3, $04, nRst, $02, nBb2, $0A, nRst, $02, nD3, $0A
	dc.b	nRst, $02, nG2, $04, nRst, $0E, nG3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $08, nBb3, $02, nRst, $04, nEb4, $0A, nRst, $02, nBb2, $0A
	dc.b	nRst, $02, nG2, $04, nRst, $02, nBb2, $0A, nRst, $02, nG2, $0A
	dc.b	nRst, $02, nA2, $04, nRst, $0E, nF3, $04, nRst, $02, nF3, $04
	dc.b	nRst, $08, nA3, $02, nRst, $04, nC4, $0A, nRst, $08, nG3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nG3, $04, nRst, $02, nG3, $0A
	dc.b	nRst, $02, nF3, $04, nRst, $02, nF3, $04, nRst, $08, nF3, $04
	dc.b	nRst, $0E, nC3, $04, nRst, $02, nD3, $04, nRst, $08, nEb3, $04
	dc.b	nRst, $02, nD3, $04, nRst, $02, nC3, $04, nRst, $08, nBb2, $04
	dc.b	nRst, $02, nC3, $04, nRst, $02, nAb2, $04, nRst, $08, nF3, $10
	dc.b	nRst, $02, nEb3, $04, nRst, $08, nD3, $04, nRst, $0E, nBb3, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nEb3, $04, nRst, $02, nC3, $10
	dc.b	nRst, $02, nF2, $34, nRst, $08, nEb3, $04, nRst, $02, nD3, $04
	dc.b	nRst, $02, nC3, $04, nRst, $08, nBb2, $04, nRst, $02, nC3, $04
	dc.b	nRst, $02, nAb2, $04, nRst, $08, nF3, $10, nRst, $02, nEb3, $04
	dc.b	nRst, $08, nD3, $04, nRst, $08, nEb3, $16, nRst, $02, nF3, $10
	dc.b	nRst, $02, nF3, $04, nRst, $08, nEb3, $10, nRst, $02, nD3, $16
	dc.b	nRst, $08, nEb3, $04, nRst, $02, nD3, $04, nRst, $02, nC3, $04
	dc.b	nRst, $08, nBb2, $04, nRst, $02, nC3, $04, nRst, $02, nAb2, $04
	dc.b	nRst, $08, nF3, $10, nRst, $02, nEb3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $0E, nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nEb3, $04
	dc.b	nRst, $02, nC3, $10, nRst, $02, nF2, $34, nRst, $08, nEb3, $04
	dc.b	nRst, $02, nD3, $04, nRst, $02, nC3, $04, nRst, $08, nBb2, $04
	dc.b	nRst, $02, nC3, $04, nRst, $02, nAb2, $04, nRst, $1A, nC3, $0A
	dc.b	nRst, $02, nEb3, $0A, nRst, $08, nD3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $08, nD3, $04, nRst, $02, nD3, $0A, nRst, $02, nD3, $04
	dc.b	nRst, $2C
	smpsJump            Snd_HCZ2_FM5

; PSG1 Data
Snd_HCZ2_PSG1:
	smpsPSGvoice        fTone_0A

Snd_HCZ2_Jump02:
	dc.b	nC4, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $08, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nC4, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $60, nRst, $1A, nC4, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04
	dc.b	nRst, $02, nC4, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04
	dc.b	nRst, $02, nG3, $04, nRst, $60, nRst, nRst, $38, nF4, $06, nFs4
	dc.b	nG4, nBb5, nRst, nC5, nFs5, $02, nG5, $12, nRst, $70, nC4, $04
	dc.b	nRst, $02, nA4, $04, nRst, $02, nG4, $04, nRst, $08, nF4, $04
	dc.b	nRst, $02, nFs4, nG4, $04, nE4, nRst, $7F, nRst, $31, nF4, $06
	dc.b	nFs4, nG4, nBb5, nRst, nC5, nFs5, $02, nG5, $12, nRst, $70, nC5
	dc.b	$06, nBb4, nG4, nF4, $04, nFs4, nF4, nEb4, $06, nC4, nRst, $12
	dc.b	nBb3, $1E, nRst, $3C, nC4, $04, nRst, $02, nC4, $04, nRst, $08
	dc.b	nD4, $02, nRst, $04, nEb4, $0A, nRst, $3E, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $08, nC4, $02, nRst, $04, nD4, $0A, nRst, $3E
	dc.b	nD4, $04, nRst, $02, nD4, $04, nRst, $08, nEb4, $02, nRst, $04
	dc.b	nF4, $0A, nRst, $08, nEb5, $04, nRst, $0E, nD5, $0A, nRst, $02
	dc.b	nD5, $04, nRst, $02, nEb5, $04, nRst, $08, nD5, $10, nRst, $02
	dc.b	nEb5, $0A, nRst, $02, nF5, $0A, nRst, $3E, nC4, $04, nRst, $02
	dc.b	nC4, $04, nRst, $08, nD4, $02, nRst, $04, nEb4, $0A, nRst, $3E
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $08, nEb4, $02, nRst, $04
	dc.b	nG4, $0A, nRst, $3E, nA3, $04, nRst, $02, nA3, $04, nRst, $08
	dc.b	nC4, $02, nRst, $04, nEb4, $0A, nRst, $08, nEb4, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $02, nEb4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nD4, $04, nRst, $08, nD4, $04, nRst, $50
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $38, nD4, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nF4, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nG3, $04, nRst, $38, nB3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nB3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nB3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nC3, $04, nRst, $02, nEb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nD3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nAb3, $04, nRst, $02, nC4, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nF3, $04, nRst, $02, nG3, $04, nRst, $02, nD4, $04, nRst, $02
	dc.b	nG3, $04, nRst, $38, nBb3, $04, nRst, $02, nG3, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nBb3, $04, nRst, $02, nBb3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $02, nBb3, $04, nRst, $38, nD4, $04, nRst, $02
	dc.b	nBb3, $04, nRst, $02, nD4, $04, nRst, $02, nF4, $04, nRst, $02
	dc.b	nD4, $04, nRst, $02, nBb3, $04, nRst, $02, nG3, $04, nRst, $38
	dc.b	nEb3, $04, nRst, $02, nAb3, $04, nRst, $02, nEb3, $04, nRst, $02
	dc.b	nEb3, $04, nRst, $02, nC4, $04, nRst, $02, nAb3, $04, nRst, $02
	dc.b	nEb4, $04, nRst, $08, nEb5, $04, nRst, $08, nEb5, $04, nRst, $08
	dc.b	nEb5, $04, nRst, $02, nEb5, $0A, nRst, $02, nD5, $04, nRst, $2C
	smpsJump            Snd_HCZ2_Jump02

; PSG2 Data
Snd_HCZ2_PSG2:
	smpsPSGvoice        fTone_08
	dc.b	nRst, $01
	smpsAlterNote       $01

Snd_HCZ2_Jump03:
	smpsJump            Snd_HCZ2_Jump02

; PSG3 Data
Snd_HCZ2_PSG3:
	smpsPSGvoice        fTone_02
	smpsPSGform         $E7

Snd_HCZ2_Jump01:
	dc.b	nRst, $18, nRst, $18, nRst, $18, nRst, $18, nRst, $18
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $04, nMaxPSG1, $04, nMaxPSG1, $04
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $0C, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $18, nMaxPSG1, $04, nMaxPSG1, $04, nMaxPSG1, $04
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $0C, smpsNoAttack, $18

Snd_HCZ2_Loop04:
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06
	smpsLoop            $01, $03, Snd_HCZ2_Loop04
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, smpsNoAttack, $18, smpsNoAttack, $18
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18

Snd_HCZ2_Loop05:
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $03, Snd_HCZ2_Loop05
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18

Snd_HCZ2_Loop06:
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $0C
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $0C
	smpsLoop            $01, $03, Snd_HCZ2_Loop06
	dc.b	smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06, smpsNoAttack, $18, nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06, nMaxPSG1, $06
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_08
	dc.b	nMaxPSG1, $06
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG1, $06, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18, smpsNoAttack, $18
	smpsJump            Snd_HCZ2_Jump01

Mus82_LZ_Voices:
;	Voice $00
;	$31
;	$34, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$0C, $07, $0C, $09
;	$07, $07, $07, $08, 	$2F, $1F, $1F, $2F, 	$17, $32, $14, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $04
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0C, $07, $0C
	smpsVcDecayRate2    $08, $07, $07, $07
	smpsVcDecayLevel    $02, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $32, $17

;	Voice $01
;	$18
;	$37, $30, $30, $31, 	$9E, $DC, $1C, $9C, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$BF, $BF, $3F, $2F, 	$2C, $22, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $00, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $22, $2C

;	Voice $02
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$18, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $03
;	$3D
;	$01, $02, $02, $02, 	$14, $0E, $8C, $0E, 	$08, $05, $02, $05
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1A, $92, $A7, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0E, $0C, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $05, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $12, $1A

;	Voice $04
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1A, $80, $16, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $00, $1A

