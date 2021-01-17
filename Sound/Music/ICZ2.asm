Snd_ICZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     s3p12_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $14

	smpsHeaderDAC       Snd_ICZ2_DAC
	smpsHeaderFM        Snd_ICZ2_FM1,	$00, $02
	smpsHeaderFM        Snd_ICZ2_FM2,	$F4, $08
	smpsHeaderFM        Snd_ICZ2_FM3,	$F4, $08
	smpsHeaderFM        Snd_ICZ2_FM4,	$F4, $08
	smpsHeaderFM        Snd_ICZ2_FM5,	$F4, $08
	smpsHeaderPSG       Snd_ICZ2_PSG1,	$E8, $01, $00, sTone_06
	smpsHeaderPSG       Snd_ICZ2_PSG2,	$E8, $02, $00, sTone_06
	smpsHeaderPSG       Snd_ICZ2_PSG3,	$00, $01, $00, sTone_02

; FM1 Data
Snd_ICZ2_FM1:
	smpsSetvoice        $00

Snd_ICZ2_Loop0F:
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsLoop            $01, $03, Snd_ICZ2_Loop0F
	dc.b	nC3, $0C, $18, $06, nC3, nBb2, $0C, $18, $06, nBb2, nAb2, $0C
	dc.b	$18, $06, nAb2, nG2, $0C, $18, $06, nG2, nC3, $0C, $18, $06
	dc.b	nC3, nEb3, $0C, $18, $06, nEb3, nBb2, $0C, $18, $06, nBb2, nBb2
	dc.b	$0C, $18, $06, nBb2

Snd_ICZ2_Loop10:
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsLoop            $01, $02, Snd_ICZ2_Loop10

Snd_ICZ2_Loop11:
	dc.b	nC3, $0C, $18, $06, nC3, nBb2, $0C, $18, $06, nBb2, nAb2, $0C
	dc.b	$18, $06, nAb2, nG2, $0C, $18, $06, nG2, nC3, $0C, $18, $06
	dc.b	nC3, nEb3, $0C, $18, $06, nEb3, nBb2, $0C, $18, $06, nBb2, nBb2
	dc.b	$0C, $18, $06, nBb2
	smpsLoop            $01, $02, Snd_ICZ2_Loop11

Snd_ICZ2_Loop12:
	dc.b	nC3, $0C, $06, nC3, nC3, $0C, $06, nC3, nAb2, $0C, $06, nAb2
	dc.b	nAb2, $0C, $06, nAb2, nBb2, $0C, $06, nBb2, nBb2, nBb2, nBb2, nBb2
	dc.b	nG2, $0C, $06, nG2, nG2, $0C, $06, nG2, nC3, $0C, $06, nC3
	dc.b	nC3, $0C, $06, nC3, nAb2, $0C, $06, nAb2, nAb2, $0C, $06, nAb2
	dc.b	nBb2, $0C, $06, nBb2, nBb2, $0C, $06, nBb2, nBb2, $0C, $06, nBb2
	dc.b	nBb2, $0C, $06, nBb2
	smpsLoop            $01, $04, Snd_ICZ2_Loop12

Snd_ICZ2_Loop13:
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsLoop            $01, $02, Snd_ICZ2_Loop13
	smpsJump            Snd_ICZ2_Loop0F

; FM2 Data
Snd_ICZ2_FM2:
	smpsSetvoice        $01
	smpsAlterPitch      $0C
	smpsModSet          $01, $01, $03, $03

Snd_ICZ2_Loop0C:
	dc.b	nG4, $30, smpsNoAttack, $30, smpsNoAttack, nG4, nF4, nG4, smpsNoAttack, $30, nF4, smpsNoAttack
	dc.b	$30
	smpsLoop            $01, $04, Snd_ICZ2_Loop0C
	smpsAlterPitch      $F4
	smpsSetvoice        $02
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, $12, nEb5, nF5, $0C, nBb4, $30
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, smpsNoAttack, $30, nRst, $30, nRst, nRst
	dc.b	nRst, nRst, nRst, nRst, nRst
	smpsSetvoice        $01
	smpsAlterPitch      $0C
	smpsModSet          $01, $01, $03, $03
	dc.b	nRst, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nG4, smpsNoAttack, $30, smpsNoAttack
	dc.b	nG4, nF4, nG4, smpsNoAttack, $30, nF4, smpsNoAttack, $30
	smpsAlterPitch      $F4
	smpsSetvoice        $02

Snd_ICZ2_Loop0D:
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, $12, nEb5, nF5, $0C, nBb4, $30
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, smpsNoAttack, $30
	smpsLoop            $01, $04, Snd_ICZ2_Loop0D

Snd_ICZ2_Loop0E:
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsLoop            $01, $02, Snd_ICZ2_Loop0E
	smpsJump            Snd_ICZ2_FM2

; FM3 Data
Snd_ICZ2_FM3:
	smpsCall            Snd_ICZ2_Call01
	dc.b	nAb3, $30, nG3, nRst, nRst, nRst, nRst
	smpsLoop            $01, $04, Snd_ICZ2_FM3

Snd_ICZ2_Loop09:
	smpsCall            Snd_ICZ2_Call01
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst
	smpsLoop            $01, $02, Snd_ICZ2_Loop09
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst
	smpsCall            Snd_ICZ2_Call01
	dc.b	nRst, $30, nRst, nAb3, $30, nG3, nRst, nRst, nRst, nRst

Snd_ICZ2_Loop0A:
	smpsCall            Snd_ICZ2_Call01
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst
	smpsLoop            $01, $04, Snd_ICZ2_Loop0A

Snd_ICZ2_Loop0B:
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsLoop            $00, $02, Snd_ICZ2_Loop0B
	smpsJump            Snd_ICZ2_FM3

Snd_ICZ2_Call01:
	smpsSetvoice        $01
	smpsModSet          $01, $01, $A1, $FF
	smpsPan             panLeft, $00
	dc.b	nG6, $09, nRst, $27, nRst, $06
	smpsSetvoice        $02
	smpsFMAlterVol      $2C
	smpsPan             panRight, $00

Snd_ICZ2_Loop1E:
	dc.b	nBb2, $01
	smpsFMAlterVol      $FD
	smpsLoop            $00, $12, Snd_ICZ2_Loop1E
	smpsFMAlterVol      $0A
	dc.b	nRst, $18
	smpsSetvoice        $01
	smpsModSet          $01, $01, $03, $03
	smpsPan             panCenter, $00
	smpsReturn

; FM4 Data
Snd_ICZ2_FM4:
	smpsSetvoice        $01
	smpsAlterPitch      $0C
	smpsModSet          $01, $01, $03, $03

Snd_ICZ2_Loop05:
	dc.b	nC4, $30, nBb3, nC4, nBb3, nC4, nBb3, smpsNoAttack, nBb3, smpsNoAttack, $30
	smpsLoop            $01, $04, Snd_ICZ2_Loop05
	smpsAlterPitch      $F4
	smpsSetvoice        $00
	smpsPan             panRight, $00

Snd_ICZ2_Loop06:
	dc.b	nBb4, $06, nC4, nG4, nC5, nG4, nC4, nG4, nC5, nG4, nC4, nAb4
	dc.b	nC5, nAb4, nC4, nAb4, nC5, nAb4, nD4, nBb4, nD5, nBb4, nD4, nBb4
	dc.b	nD5, nBb4, nD4, nBb4, nG4, nBb4, nD4, nBb4, nG4
	smpsLoop            $01, $03, Snd_ICZ2_Loop06
	dc.b	nBb4, $06, nC4, nG4, nC5, nG4, nC4, nG4, nC5, nG4, nC4, nAb4
	dc.b	nC5, nAb4, nC4, nAb4, nC5, nAb4, nD4, nBb4, nD5, nBb4, nD4, nBb4
	dc.b	nD5, nBb4, nD4, nBb4, nD5, nBb4, nD4, nBb4, nD5
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsAlterPitch      $0C
	smpsModSet          $01, $01, $03, $03
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst, nC4, nBb3, nC4
	dc.b	nBb3, nC4, nBb3, smpsNoAttack, nBb3, smpsNoAttack, $30
	smpsAlterPitch      $F4
	smpsSetvoice        $00

Snd_ICZ2_Loop08:
	smpsPan             panRight, $00

Snd_ICZ2_Loop07:
	dc.b	nBb4, $06, nC4, nG4, nC5, nG4, nC4, nG4, nC5, nG4, nC4, nAb4
	dc.b	nC5, nAb4, nC4, nAb4, nC5, nAb4, nD4, nBb4, nD5, nBb4, nD4, nBb4
	dc.b	nD5, nBb4, nD4, nBb4, nG4, nBb4, nD4, nBb4, nG4
	smpsLoop            $02, $03, Snd_ICZ2_Loop07
	dc.b	nBb4, $06, nC4, nG4, nC5, nG4, nC4, nG4, nC5, nG4, nC4, nAb4
	dc.b	nC5, nAb4, nC4, nAb4, nC5, nAb4, nD4, nBb4, nD5, nBb4, nD4, nBb4
	dc.b	nD5, nBb4, nD4, nBb4, nD5, nBb4, nD4, nBb4, nD5
	smpsPan             panCenter, $00
	smpsLoop            $01, $03, Snd_ICZ2_Loop08
	smpsJump            Snd_ICZ2_FM4

; FM5 Data
Snd_ICZ2_FM5:
	dc.b	nRst, $60, nRst, nRst, $09
	smpsDetune          $05

s3p12_Jump01:
	smpsSetvoice        $00
	smpsModSet          $20, $01, $05, $05
	dc.b	nBb4, $03, smpsNoAttack, nB4, $15, nG4, $06, nRst, nD4, $60, nRst, $0C
	dc.b	nBb4, $02, smpsNoAttack, nB4, $04, nRst, $06, nB4, $12, nRst, $06, nB4
	dc.b	$03, smpsNoAttack, nC5, $15, nB4, $06, nRst, nA4, $60, smpsNoAttack, nA4, $30
	dc.b	nRst, $18, nBb4, $02, smpsNoAttack, nB4, $16, nG4, $06, nRst, nD4, $60
	dc.b	nRst, $0C, nCs5, $02, smpsNoAttack, nD5, $04, nRst, $06, nD5, $18, nC5
	dc.b	nB4, $06, nRst, nA4, $60, smpsNoAttack, $48
	smpsLoop            $00, $02, s3p12_Jump01
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
	smpsJump            s3p12_Jump01

; PSG1 Data
Snd_ICZ2_PSG1:
	smpsPSGvoice        sTone_02
	smpsAlterPitch      $18
	smpsNoteFill        $09

Snd_ICZ2_Loop1A:
	dc.b	nG4, $0C, nG4, nG4, $06, $0C, nG4, nG4, $2A
	smpsLoop            $01, $10, Snd_ICZ2_Loop1A
	smpsAlterPitch      $E8
	smpsNoteFill        $00
	smpsPSGvoice        sTone_16
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, $12, nEb5, nF5, $0C, nBb4, $30
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, smpsNoAttack, $30
	smpsPSGvoice        sTone_02
	smpsAlterPitch      $18
	smpsNoteFill        $09

Snd_ICZ2_Loop1B:
	dc.b	nG4, $0C, nG4, nG4, $06, $0C, nG4, nG4, $2A
	smpsLoop            $01, $0B, Snd_ICZ2_Loop1B
	dc.b	nRst, $30, nRst
	smpsAlterPitch      $E8
	smpsNoteFill        $00
	smpsPSGvoice        sTone_16

Snd_ICZ2_Loop1C:
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, $12, nEb5, nF5, $0C, nBb4, $30
	dc.b	nC5, $18, nC6, nBb5, $30, nD5, smpsNoAttack, $30
	smpsLoop            $01, $04, Snd_ICZ2_Loop1C
	smpsPSGvoice        sTone_02
	smpsAlterPitch      $18
	smpsNoteFill        $09

Snd_ICZ2_Loop1D:
	dc.b	nG4, $0C, nG4, nG4, $06, $0C, nG4, nG4, $2A
	smpsLoop            $01, $04, Snd_ICZ2_Loop1D
	smpsAlterPitch      $E8
	smpsNoteFill        $00
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsJump            Snd_ICZ2_PSG1

; PSG2 Data
Snd_ICZ2_PSG2:
	dc.b	nRst, $09
	smpsPSGvoice        sTone_05
	dc.b	nRst, $60, nRst

s3p12_Loop01:
	smpsCall            s3p12_Call00
	smpsLoop            $00, $04, s3p12_Loop01

s3p12_Jump05:
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst, nRst, nRst

s3p12_Loop02:
	smpsCall            s3p12_Call00
	smpsLoop            $00, $06, s3p12_Loop02
	smpsJump            s3p12_Jump05

s3p12_Call00:
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

; PSG3 Data
Snd_ICZ2_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        sTone_02

Snd_ICZ2_Loop14:
	dc.b	nRst, $0C, nMaxPSG2, $18, nMaxPSG2, nMaxPSG2, nMaxPSG2, $0C
	smpsLoop            $01, $1F, Snd_ICZ2_Loop14
	dc.b	nRst, $0C, nMaxPSG2, $18, nMaxPSG2, nRst, $24

Snd_ICZ2_Loop15:
	dc.b	nRst, $0C, nMaxPSG2, $18, nMaxPSG2, nMaxPSG2, nMaxPSG2, $0C
	smpsLoop            $01, $14, Snd_ICZ2_Loop15
	dc.b	nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst, nRst
	smpsJump            Snd_ICZ2_PSG3

; DAC Data
Snd_ICZ2_DAC:
	dc.b	dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, $04, nRst, $08, dKickS3, $04
	dc.b	nRst, $14, dKickS3, $04, nRst, $08, dSnareS3, $04, nRst, $08, dKickS3, $04
	dc.b	nRst, $08, dKickS3, $04, nRst, $14, dSnareS3, $04, nRst, $10, dSnareS3, $04
	dc.b	dSnareS3, $04, nRst, dSnareS3, nRst, $08, dSnareS3, $04, dSnareS3, nRst, dSnareS3, dSnareS3
	dc.b	nRst, dSnareS3

s3p12_Jump00:
	dc.b	dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, nRst, $08, dKickS3, $04, nRst
	dc.b	$08, dKickS3, $04, nRst, dSnareS3, dKickS3, nRst, $08, dSnareS3, $04, nRst, $08
	dc.b	dKickS3, $04, nRst, $08, dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, nRst
	dc.b	$08, dKickS3, $04, nRst, $08, dKickS3, $04, nRst, dSnareS3, dKickS3, nRst, $08
	dc.b	dSnareS3, $04, nRst, $08, dKickS3, $04, nRst, dSnareS3, dKickS3, $04, nRst, $10
	dc.b	dKickS3, $04, dSnareS3, nRst, $08, dKickS3, $04, nRst, $08, dKickS3, $04, nRst
	dc.b	dSnareS3, dKickS3, nRst, $08, dSnareS3, $04, nRst, $08, dKickS3, $04, nRst, $08
	dc.b	dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, nRst, $08, dKickS3, $04, nRst
	dc.b	$08, dKickS3, $04, nRst, dSnareS3, dKickS3, nRst, $08, dSnareS3, $04, nRst, $08
	dc.b	dKickS3, $04, nRst, dSnareS3, dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, nRst
	dc.b	$08, dKickS3, $04, nRst, $08, dKickS3, $04, nRst, dSnareS3, dKickS3, nRst, $08
	dc.b	dSnareS3, $04, nRst, $08, dKickS3, $04, nRst, $08, dKickS3, $04, nRst, $10
	dc.b	dKickS3, $04, dSnareS3, nRst, $08, dKickS3, $04, nRst, $08, dKickS3, $04, nRst
	dc.b	dSnareS3, dKickS3, nRst, $08, dSnareS3, $04, nRst, $08, dKickS3, $04, nRst, dSnareS3
	dc.b	dKickS3, $04, nRst, $10, dKickS3, $04, dSnareS3, nRst, $08, dKickS3, $04, nRst
	dc.b	$08, dKickS3, $04, nRst, dSnareS3, dKickS3, nRst, $08, dSnareS3, $04, nRst, $08
	dc.b	dKickS3, $04, nRst, $08, dKickS3, $04, nRst, $08, dSnareS3, $04, nRst, $08
	dc.b	dSnareS3, $04, nRst, dSnareS3, nRst, $08, dSnareS3, $04, dSnareS3, nRst, $08, dSnareS3
	dc.b	$04, nRst, dSnareS3, dSnareS3, nRst, dSnareS3, dSnareS3, nRst, $08
	smpsJump            s3p12_Jump00

s3p12_Voices:
;	Voice $00
;	$3D
;	$01, $00, $04, $02, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $18, $1A, 	$12, $82, $82, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $04, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $08, $0A, $05
	smpsVcTotalLevel    $80, $82, $82, $12

;	Voice $01
;	$3A
;	$01, $02, $01, $01, 	$1F, $5F, $5F, $5F, 	$10, $11, $09, $09
;	$07, $00, $00, $00, 	$CF, $FF, $FF, $FF, 	$1C, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $11, $10
	smpsVcDecayRate2    $00, $00, $00, $07
	smpsVcDecayLevel    $0F, $0F, $0F, $0C
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $80, $18, $22, $1C

;	Voice $02
;	$3D
;	$01, $02, $02, $03, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $03, $02, $02, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $80, $80, $80, $15

