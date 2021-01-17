s3p11_Header:
	smpsHeaderStartSong 3, 1
	smpsHeaderVoice     s3p11_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $19

	smpsHeaderDAC       s3p11_DAC
	smpsHeaderFM        s3p11_FM1,	$18, $18
	smpsHeaderFM        s3p11_FM2,	$0C, $10
	smpsHeaderFM        s3p11_FM3,	$0C, $1E
	smpsHeaderFM        s3p11_FM4,	$0C, $1E
	smpsHeaderFM        s3p11_FM5,	$18, $1B
	smpsHeaderPSG       s3p11_PSG1,	$00, $03, $00, $00
	smpsHeaderPSG       s3p11_PSG2,	$00, $05, $00, $00
	smpsHeaderPSG       s3p11_PSG3,	$00, $01, $00, $00

; FM1 Data
s3p11_FM1:
	smpsSetvoice        $00
	smpsChangeTransposition $F4
	smpsFMAlterVol      $05
	dc.b	nF5, $06, nRst, $02, nF5, $06, nRst, nF5, $04, nF5, $06, nRst
	dc.b	nF5, $06, nRst, $02, nF5, $06, nRst, nF5, $04, nF5, $06, nRst
	dc.b	nF5, $06, nRst, nF5, nRst, nD5, nRst, $2A, nD5, $06, nRst, $02
	dc.b	nD5, $06, nRst, nD5, nRst, nD5, $04, nD5, $06, nRst
	smpsChangeTransposition $0C
	smpsFMAlterVol      $F8

s3p11_Jump00:
	smpsSetvoice        $01
	smpsModSet          $20, $01, $05, $05
	dc.b	nBb4, $03, smpsNoAttack, nB4, $15, nG4, $06, nRst, nD4, $60, nRst, $0C
	dc.b	nBb4, $02, smpsNoAttack, nB4, $04, nRst, $06, nB4, $12, nRst, $06, nB4
	dc.b	$03, smpsNoAttack, nC5, $15, nB4, $06, nRst, nA4, $60, smpsNoAttack, nA4, $30
	dc.b	nRst, $18, nBb4, $02, smpsNoAttack, nB4, $16, nG4, $06, nRst, nD4, $60
	dc.b	nRst, $0C, nCs5, $02, smpsNoAttack, nD5, $04, nRst, $06, nD5, $18, nC5
	dc.b	nB4, $06, nRst, nA4, $60, smpsNoAttack, $48
	smpsLoop            $00, $02, s3p11_Jump00
	smpsFMAlterVol      $03
	smpsSetvoice        $02
	smpsChangeTransposition $E8
	dc.b	nRst, $08, nG4, $04, nA4, nRst, nG4, nA4, nRst, nG4, nRst, $08
	dc.b	nAb4, $03, smpsNoAttack, nA4, $0D, nG4, $04, nRst, $28, nG4, $04, nA4
	dc.b	nRst, nG4, nA4, nRst, nG4, nRst, $08, nB4, $03, smpsNoAttack, nC5, $0D
	dc.b	nB4, $04, nRst, $08, nA4, $08, nRst, $04, nG4, $08, nRst, $04
	dc.b	nB4, $03, smpsNoAttack, nC5, $11, nD5, $04, nRst, $0C, nA4, $24, nRst
	dc.b	$0C, nF4, $04, nRst, $08, nF4, $0C, nE4, $08, nF4, $04, nRst
	dc.b	$08, nE4, $04, nD4, $30, nRst, $0C, nRst, $08, nG4, $04, nA4
	dc.b	nRst, nG4, nA4, nRst, nG4, nRst, $08, nAb4, $03, smpsNoAttack, nA4, $0D
	dc.b	nG4, $04, nRst, $28, nG4, $04, nA4, nRst, nG4, nA4, nRst, nG4
	dc.b	nRst, $08, nB4, $03, smpsNoAttack, nC5, $0D, nB4, $04, nRst, $08, nA4
	dc.b	$08, nRst, $04, nG4, $08, nRst, $04, nC5, $10, nRst, $04, nD5
	dc.b	$04, nRst, $0C, nEb5, $03, smpsNoAttack, nE5, $2D, nRst, $0C, nA4, $04
	dc.b	nG4, nA4, nB4, nA4, nB4, nC5, nB4, nC5, nD5, nC5, nD5, nE5
	dc.b	nD5, nE5, nF5, nE5, nF5, nG5, nF5, nG5, nA5, nG5, nA5
	smpsChangeTransposition $18
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsFMAlterVol      $FD
	smpsJump            s3p11_Jump00

; FM2 Data
s3p11_FM2:
	smpsSetvoice        $03
	dc.b	nD2, $04, nRst, nD2, nRst, $08, nD2, $04, nD2, nRst, $08, nD2
	dc.b	$04, nRst, nD2, nRst, $08, nD2, $04, nD2, nRst, $08, nD2, $04
	dc.b	nRst, $08, nD2, $04, nRst, $08, nG2, $06, nRst, $2A, nD2, $04
	dc.b	nRst, nD2, nRst, $08, nD2, $04, nRst, $08, nD2, $04, nD2, nRst
	dc.b	$08

s3p11_Jump03:
	dc.b	nG2, $04, nRst, $08, nG2, $04, nRst, nG2, nRst, $08, nG2, $04
	dc.b	nG2, nRst, $08, nG2, $05, nRst, $07, nD2, $05, nRst, $07, nG2
	dc.b	$05, nRst, $07, nD2, $05, nRst, $07, nG2, $04, nRst, $08, nG2
	dc.b	$04, nRst, nG2, nRst, $08, nG2, $04, nG2, nRst, $08, nG2, $05
	dc.b	nRst, $07, nD2, $05, nRst, $07, nG2, $05, nRst, $07, nD2, $05
	dc.b	nRst, $07, nF2, $04, nRst, $08, nF2, $04, nRst, nF2, nRst, $08
	dc.b	nF2, $04, nF2, nRst, $08, nF2, $05, nRst, $07, nC2, $05, nRst
	dc.b	$07, nF2, $05, nRst, $07, nC2, $05, nRst, $07, nF2, $04, nRst
	dc.b	$08, nF2, $04, nRst, nF2, nRst, $08, nF2, $04, nF2, nRst, $08
	dc.b	nF2, $05, nRst, $07, nC2, $05, nRst, $07, nF2, $05, nRst, $07
	dc.b	nC2, $05, nRst, $07, nG2, $04, nRst, $08, nG2, $04, nRst, nG2
	dc.b	nRst, $08, nG2, $04, nG2, nRst, $08, nG2, $05, nRst, $07, nD2
	dc.b	$05, nRst, $07, nG2, $05, nRst, $07, nD2, $05, nRst, $07, nG2
	dc.b	$04, nRst, $08, nG2, $04, nRst, nG2, nRst, $08, nG2, $04, nG2
	dc.b	nRst, $08, nG2, $05, nRst, $07, nD2, $05, nRst, $07, nG2, $05
	dc.b	nRst, $07, nD2, $05, nRst, $07, nF2, $04, nRst, $08, nF2, $04
	dc.b	nRst, nF2, nRst, $08, nF2, $04, nF2, nRst, $08, nF2, $05, nRst
	dc.b	$07, nC2, $05, nRst, $07, nF2, $05, nRst, $07, nC2, $05, nRst
	dc.b	$07, nF2, $04, nRst, $08, nF2, $04, nRst, nF2, nRst, $08, nF2
	dc.b	$04, nF2, nRst, $08, nF2, $05, nRst, $07, nC2, $05, nRst, $07
	dc.b	nA2, $05, nRst, $07, nF2, $05, nRst, $07
	smpsJump            s3p11_Jump03

; FM3 Data
s3p11_FM3:
	smpsPan             panLeft, $00
	smpsSetvoice        $04
	dc.b	nRst, $01, nC5, $06, nRst, $02, nC5, $06, nRst, nC5, $04, nC5
	dc.b	$06, nRst, nC5, $06, nRst, $02, nC5, $06, nRst, nC5, $04, nC5
	dc.b	$06, nRst, nC5, $06, nRst, nC5, nRst, nA4, nRst, $2A, nA4, $06
	dc.b	nRst, $02, nA4, $06, nRst, nA4, nRst, nA4, $04, nA4, $06, nRst
	dc.b	$05

s3p11_Jump02:
	dc.b	nG3, $04, nRst, $08, nD3, $04, nRst, $04, nG3, $04, nRst, $08
	dc.b	nD3, $04, nG3, nRst, $08, nG3, $04, nRst, $20, nD3, $08, nRst
	dc.b	$04, nG3, $04, nRst, $08, nD3, $04, nRst, $04, nG3, $04, nRst
	dc.b	$08, nD3, $04, nG3, nRst, $08, nD3, $08, nRst, $04, nG3, $04
	dc.b	nRst, $08, nG3, $0C, nD3, nF3, $04, nRst, $08, nD3, $04, nRst
	dc.b	$04, nF3, $04, nRst, $08, nD3, $04, nF3, nRst, $08, nF3, $04
	dc.b	nRst, $20, nD3, $08, nRst, $04, nF3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $04, nF3, $04, nRst, $08, nD3, $04, nF3, nRst, $08, nD3
	dc.b	$08, nRst, $04, nA3, $04, nRst, $08, nA3, $0C, nD3
	smpsJump            s3p11_Jump02

; FM4 Data
s3p11_FM4:
	smpsPan             panRight, $00
	smpsSetvoice        $05
	dc.b	nRst, $02, nF4, $06, nRst, $02, nF4, $06, nRst, nF4, $04, nF4
	dc.b	$06, nRst, nF4, $06, nRst, $02, nF4, $06, nRst, nF4, $04, nF4
	dc.b	$06, nRst, nF4, $06, nRst, nF4, nRst, nD4, nRst, $2A, nD4, $06
	dc.b	nRst, $02, nD4, $06, nRst, nD4, nRst, nD4, $04, nD4, $06, nRst
	dc.b	$04

s3p11_Jump01:
	dc.b	nB3, $04, nRst, $08, nD3, $04, nRst, $04, nB3, $04, nRst, $08
	dc.b	nD3, $04, nB3, nRst, $08, nB3, $04, nRst, $20, nD3, $08, nRst
	dc.b	$04, nB3, $04, nRst, $08, nD3, $04, nRst, $04, nB3, $04, nRst
	dc.b	$08, nD3, $04, nB3, nRst, $08, nD3, $08, nRst, $04, nB3, $04
	dc.b	nRst, $08, nB3, $0C, nD3, nA3, $04, nRst, $08, nD3, $04, nRst
	dc.b	$04, nA3, $04, nRst, $08, nD3, $04, nA3, nRst, $08, nA3, $04
	dc.b	nRst, $20, nD3, $08, nRst, $04, nA3, $04, nRst, $08, nD3, $04
	dc.b	nRst, $04, nA3, $04, nRst, $08, nD3, $04, nA3, nRst, $08, nD3
	dc.b	$08, nRst, $04, nC4, $04, nRst, $08, nC4, $0C, nD3
	smpsJump            s3p11_Jump01

; FM5 Data
s3p11_FM5:
	smpsAlterPitch      $0C
	smpsSetvoice        $01
	smpsModSet          $01, $01, $03, $03

Snd_ICZ1_Loop03:
	dc.b	nEb4, $30, smpsNoAttack, $30, smpsNoAttack, nEb4, nD4, nEb4, smpsNoAttack, $30, nD4, smpsNoAttack
	dc.b	$30
	smpsLoop            $01, $04, Snd_ICZ1_Loop03
	smpsAlterPitch      $F4
	smpsSetvoice        $03
	smpsModSet          $00, $00, $00, $00

Snd_ICZ1_Loop04:
	dc.b	nC4, $06, nG4, nC5, nG4, nC4, nG4, nC5, nG4, nC4, nAb4, nC5
	dc.b	nAb4, nC4, nAb4, nC5, nAb4, nD4, nBb4, nD5, nBb4, nD4, nBb4, nD5
	dc.b	nBb4, nD4, nBb4, nG4, nBb4, nD4, nBb4, nG4, nBb4, nC4, nG4, nC5
	dc.b	nG4, nC4, nG4, nC5, nG4, nC4, nAb4, nC5, nAb4, nC4, nAb4, nC5
	dc.b	nAb4, nD4, nBb4, nD5, nBb4, nD4, nBb4, nD5, nBb4, nD4, nBb4, nD5
	dc.b	nBb4, nD4, nBb4, nD5, nBb4
	smpsLoop            $01, $02, Snd_ICZ1_Loop04
	smpsSetvoice        $01
	smpsAlterPitch      $0C
	smpsModSet          $01, $01, $03, $03

Snd_ICZ1_Loop05:
	dc.b	nEb4, $30, smpsNoAttack, $30, smpsNoAttack, nEb4, nD4, nEb4, smpsNoAttack, $30, nD4, smpsNoAttack
	dc.b	$30
	smpsLoop            $01, $02, Snd_ICZ1_Loop05
	smpsAlterPitch      $F4
	smpsSetvoice        $03
	smpsModSet          $00, $00, $00, $00

Snd_ICZ1_Loop06:
	dc.b	nC4, $06, nG4, nC5, nG4, nC4, nG4, nC5, nG4, nC4, nAb4, nC5
	dc.b	nAb4, nC4, nAb4, nC5, nAb4, nD4, nBb4, nD5, nBb4, nD4, nBb4, nD5
	dc.b	nBb4, nD4, nBb4, nG4, nBb4, nD4, nBb4, nG4, nBb4, nC4, nG4, nC5
	dc.b	nG4, nC4, nG4, nC5, nG4, nC4, nAb4, nC5, nAb4, nC4, nAb4, nC5
	dc.b	nAb4, nD4, nBb4, nD5, nBb4, nD4, nBb4, nD5, nBb4, nD4, nBb4, nD5
	dc.b	nBb4, nD4, nBb4, nD5, nBb4
	smpsLoop            $01, $04, Snd_ICZ1_Loop06
	smpsJump            s3p11_FM5

; DAC Data
s3p11_DAC:
	dc.b	dDanceStyleKick, $18, dDanceStyleKick, $06, nRst, $12, dDanceStyleKick, $0C, dQuickHit, $06, dQuickHit, dDanceStyleKick
	dc.b	dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick, $18, dDanceStyleKick, dDanceStyleKick, $06, dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick
	dc.b	$0C, dBassHey, dDanceStyleKick, $18, dDanceStyleKick, $06, nRst, $12, dDanceStyleKick, $0C, dQuickHit, $06
	dc.b	dQuickHit, dDanceStyleKick, dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick, $18, dDanceStyleKick, dDanceStyleKick, $06, dQuickHit, dQuickHit
	dc.b	dQuickHit, dDanceStyleKick, $0C, dQuickHit, $06, dQuickHit
	smpsLoop            $00, $04, s3p11_DAC

Snd_ICZ1_Loop00:
	dc.b	dDanceStyleKick, $18, dDanceStyleKick, $06, nRst, $12, dDanceStyleKick, $0C, dReverseFadingWind, $0C, dLooseSnareNoise, $18
	dc.b	dDanceStyleKick, dDanceStyleKick, dDanceStyleKick, $06, dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick, dHipHopHitKick3, $0C, $06, dDanceStyleKick
	dc.b	$18, dDanceStyleKick, $06, nRst, $12, dDanceStyleKick, $0C, dQuickHit, $06, dQuickHit, dDanceStyleKick, dQuickHit
	dc.b	dQuickHit, dQuickHit, dDanceStyleKick, $18, dDanceStyleKick, dDanceStyleKick, $06, dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick, $0C
	dc.b	dQuickHit, $06, dQuickHit
	smpsLoop            $00, $02, Snd_ICZ1_Loop00

Snd_ICZ1_Loop01:
	dc.b	dDanceStyleKick, $18, dDanceStyleKick, dDanceStyleKick, $06, dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick, $0C, dBassHey, dDanceStyleKick
	dc.b	$18, dDanceStyleKick, $06, nRst, $12, dDanceStyleKick, $0C, dQuickHit, $06, dQuickHit, dDanceStyleKick, dQuickHit
	dc.b	dQuickHit, dQuickHit, dDanceStyleKick, $18, dDanceStyleKick, dDanceStyleKick, $06, dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick, $0C
	dc.b	dQuickHit, $06, dQuickHit, dDanceStyleKick, $18, dDanceStyleKick, dDanceStyleKick, $0C, dDanceStyleKick, dDanceStyleKick, dDanceStyleKick
	smpsLoop            $00, $02, Snd_ICZ1_Loop01

Snd_ICZ1_Loop02:
	dc.b	dDanceStyleKick, $18, dDanceStyleKick, $06, nRst, $12, dDanceStyleKick, $0C, dReverseFadingWind, $0C, dLooseSnareNoise, $18
	dc.b	dDanceStyleKick, dDanceStyleKick, dDanceStyleKick, $06, dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick, dHipHopHitKick3, $0C, $06, dDanceStyleKick
	dc.b	$18, dDanceStyleKick, $06, nRst, $12, dDanceStyleKick, $0C, dQuickHit, $06, dQuickHit, dDanceStyleKick, dQuickHit
	dc.b	dQuickHit, dQuickHit, dDanceStyleKick, $18, dDanceStyleKick, dDanceStyleKick, $06, dQuickHit, dQuickHit, dQuickHit, dDanceStyleKick, $0C
	dc.b	dQuickHit, $06, dQuickHit
	smpsLoop            $00, $04, Snd_ICZ1_Loop02
	smpsJump            s3p11_DAC

; PSG1 Data
s3p11_PSG1:
	smpsPSGvoice        sTone_05
	dc.b	nRst, $60, nRst

s3p11_Loop01:
	smpsCall            s3p11_Call00
	smpsLoop            $00, $04, s3p11_Loop01

s3p11_Jump04:
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst

s3p11_Loop02:
	smpsCall            s3p11_Call00
	smpsLoop            $00, $06, s3p11_Loop02
	smpsJump            s3p11_Jump04

s3p11_Call00:
	dc.b	nG3, $04, nRst, $08, nB3, $08, nD4, $04, nRst, $08, nC4, $04
	dc.b	nB3, nRst, $08, nG3, $04, nRst, $20, nG3, $04, nRst, $08, nG3
	dc.b	$04, nRst, $08, nB3, $08, nD4, $04, nRst, $08, nC4, $04, nB3
	dc.b	nRst, $08, nG3, $04, nRst, $08, nG3, $04, nRst, $08, nG3, $04
	dc.b	nRst, $08, nG3, $04, nRst, $08, nF3, $04, nRst, $08, nA3, $08
	dc.b	nC4, $04, nRst, $08, nB3, $04, nA3, nRst, $08, nF3, $04, nRst
	dc.b	$20, nF3, $04, nRst, $08, nF3, $04, nRst, $08, nA3, $08, nC4
	dc.b	$04, nRst, $08, nB3, $04, nA3, nRst, $08, nF3, $04, nRst, $08
	dc.b	nF3, $04, nRst, $08, nF3, $04, nRst, $08, nF3, $04, nRst, $08
	smpsReturn

; PSG2 Data
s3p11_PSG2:
	smpsAlterNote       $01

Snd_ICZ1_Jump00:
	smpsPSGvoice        sTone_01
	smpsAlterPitch      $18
	smpsNoteFill        $09
	smpsModSet          $00, $01, $01, $02

Snd_ICZ1_Loop18:
	dc.b	nG4, $0C, nG4, nG4, $06, $0C, nG4, nG4, $2A
	smpsLoop            $01, $10, Snd_ICZ1_Loop18
	smpsAlterPitch      $E8
	smpsNoteFill        $00
	smpsPSGvoice        sTone_16
	smpsPSGAlterVol     $02
	dc.b	nRst, $18
	smpsModSet          $00, $01, $01, $03
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, $12, nEb5, nF5, $0C, nBb4, $30
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, smpsNoAttack, $30, nC5, $18, nC6, nBb5
	dc.b	$30, nD5, $12, nEb5, nF5, $0C, nBb4, $30, nC5, $18, nC6, nBb5
	dc.b	$30, nD5, smpsNoAttack, $18
	smpsPSGAlterVol     $FE
	smpsModSet          $00, $00, $00, $00
	smpsPSGvoice        sTone_01
	smpsAlterPitch      $18
	smpsModSet          $00, $01, $01, $02
	smpsNoteFill        $09

Snd_ICZ1_Loop19:
	dc.b	nG4, $0C, nG4, nG4, $06, $0C, nG4, nG4, $2A
	smpsLoop            $01, $07, Snd_ICZ1_Loop19
	dc.b	nRst, $30, nRst
	smpsAlterPitch      $E8
	smpsNoteFill        $00
	smpsPSGvoice        sTone_16
	smpsPSGAlterVol     $02
	dc.b	nRst, $18
	smpsModSet          $00, $01, $01, $03

Snd_ICZ1_Loop1A:
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, $12, nEb5, nF5, $0C, nBb4, $30
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, smpsNoAttack, $30
	smpsLoop            $01, $03, Snd_ICZ1_Loop1A
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, $12, nEb5, nF5, $0C, nBb4, $30
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, smpsNoAttack, $18
	smpsPSGAlterVol     $FE
	smpsModSet          $00, $00, $00, $00
	smpsJump            Snd_ICZ1_Jump00

; PSG3 Data
s3p11_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_02
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04, nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $2C
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04, nMaxPSG2, $08, nRst, $04, nMaxPSG2, $08, nRst, $04
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $02

s3p11_Loop00:
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsLoop            $00, $03, s3p11_Loop00
	dc.b	nMaxPSG2, $04, nRst, $08
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04, nRst, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG2, $04
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG2, $08
	smpsPSGAlterVol     $01
	dc.b	nRst, $04
	smpsJump            s3p11_Loop00

s3p11_Voices:
;	Voice $00
;	$20
;	$34, $38, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $08, $08, $0A
;	$07, $0E, $0A, $11, 	$20, $1F, $1F, $1F, 	$22, $37, $14, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $08, $04
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $08, $08, $07
	smpsVcDecayRate2    $11, $0A, $0E, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $00
	smpsVcTotalLevel    $00, $14, $37, $22

;	Voice $01
;	$35
;	$02, $04, $02, $01, 	$10, $0A, $0C, $0E, 	$07, $04, $04, $04
;	$01, $0A, $0A, $0A, 	$28, $1B, $1B, $1B, 	$1D, $8E, $8D, $8E
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $04, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $0C, $0A, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $04, $07
	smpsVcDecayRate2    $0A, $0A, $0A, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $08
	smpsVcTotalLevel    $0E, $0D, $0E, $1D

;	Voice $02
;	$2D
;	$02, $02, $02, $02, 	$10, $10, $10, $10, 	$07, $08, $08, $08
;	$01, $05, $05, $05, 	$28, $1B, $1B, $1B, 	$20, $86, $86, $89
	smpsVcAlgorithm     $05
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $07
	smpsVcDecayRate2    $05, $05, $05, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $08
	smpsVcTotalLevel    $09, $06, $06, $20

;	Voice $03
;	$06
;	$04, $04, $03, $34, 	$1F, $1F, $1F, $1F, 	$0F, $0F, $0F, $0F
;	$0D, $12, $11, $10, 	$1F, $0F, $1F, $0F, 	$1D, $84, $96, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $00
	smpsVcCoarseFreq    $04, $03, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0F, $0F
	smpsVcDecayRate2    $10, $11, $12, $0D
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $04, $1D

;	Voice $04
;	$3D
;	$00, $04, $07, $0A, 	$1F, $1F, $1F, $1F, 	$1F, $1D, $1D, $1D
;	$05, $06, $16, $00, 	$09, $1F, $1F, $1F, 	$34, $8D, $87, $86
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $0A, $07, $04, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1D, $1D, $1D, $1F
	smpsVcDecayRate2    $00, $16, $06, $05
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $09
	smpsVcTotalLevel    $06, $07, $0D, $34

;	Voice $05
;	$32
;	$38, $46, $4F, $32, 	$1F, $1F, $1F, $1F, 	$0E, $1C, $16, $02
;	$00, $00, $00, $00, 	$60, $60, $40, $39, 	$05, $04, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $02, $0F, $06, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $16, $1C, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $03, $04, $06, $06
	smpsVcReleaseRate   $09, $00, $00, $00
	smpsVcTotalLevel    $00, $18, $04, $05

