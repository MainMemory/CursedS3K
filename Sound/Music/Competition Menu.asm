DRMBM_Configuration_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     DRMBM_Configuration_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $05

	smpsHeaderDAC       DRMBM_Configuration_DAC
	smpsHeaderFM        DRMBM_Configuration_FM1,	$00, $0F
	smpsHeaderFM        DRMBM_Configuration_FM2,	$00, $01
	smpsHeaderFM        DRMBM_Configuration_FM3,	$00, $0C
	smpsHeaderFM        DRMBM_Configuration_FM4,	$00, $0F
	smpsHeaderFM        DRMBM_Configuration_FM5,	$00, $08
	smpsHeaderPSG       DRMBM_Configuration_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       DRMBM_Configuration_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       DRMBM_Configuration_PSG3,	$00, $02, $00, fTone_02

; DAC Data
DRMBM_Configuration_DAC:
	smpsPan             panCenter, $00
	smpsLoop            $00, $04, DRMBM_Configuration_DAC
	dc.b	dKickS3, $0C, dSnare, dKickS3, $06, $06, dSnare, $0D, dKickS3, $0C, dSnare, $09
	dc.b	dKickS3, $03, $06, $06, dSnare, $0C, dKickS3

DRMBM_Configuration_Loop00:
	dc.b	dSnare, dKickS3, $06, $06, dSnare, $0C, dKickS3, $0D, dSnare, $09, dKickS3, $03
	dc.b	$06, $06, dSnare, $0C

DRMBM_Configuration_Jump00:
	dc.b	dKickS3, $0C
	smpsLoop            $00, $02, DRMBM_Configuration_Loop00
	dc.b	dSnare, dKickS3, $06, $06, dSnare, $0C, dKickS3, dSnare, $0A, dKickS3, $03, $06
	dc.b	$06, dSnare, $0C, dKickS3, dSnare, dKickS3, $06, $06, dSnare, $0C, dKickS3, dSnare
	dc.b	$09, dKickS3, $03, $07, $06, dSnare, $0C, dKickS3, dSnare, dKickS3, $06, $06
	dc.b	dSnare, $0C, dKickS3, dSnare, $09, dKickS3, $03, $06, $07, dSnare, $0C, dKickS3

DRMBM_Configuration_Loop01:
	dc.b	dSnare, dKickS3, $06, $06, dSnare, $0C, dKickS3, dSnare, $09, dKickS3, $03, $06
	dc.b	$06, dSnare, $0D, dKickS3, $0C
	smpsLoop            $00, $02, DRMBM_Configuration_Loop01
	dc.b	dSnare

DRMBM_Configuration_Loop02:
	dc.b	dKickS3, $06, $06, dSnare, $0C, dKickS3, dSnare, $09, dKickS3, $03, $06, $06
	dc.b	dSnare, $0C, dKickS3, $0D, dSnare, $0C
	smpsLoop            $00, $02, DRMBM_Configuration_Loop02

DRMBM_Configuration_Loop03:
	dc.b	dKickS3, $06, $06, dSnare, $0C, dKickS3, dSnare, $09, dKickS3, $03, $06, $06
	dc.b	dSnare, $0C, dKickS3, dSnare, $0D
	smpsLoop            $00, $02, DRMBM_Configuration_Loop03
	dc.b	dKickS3, $06, $06, dSnare, $0C, dKickS3, dSnare, $09, dKickS3, $03, $06, $06
	dc.b	dSnare, $0C, dKickS3, dSnare, dKickS3, $06, $07, dSnare, $0C, dKickS3

DRMBM_Configuration_Loop04:
	dc.b	dSnare, $09, dKickS3, $03, $06, $06, dSnare, $0C, dKickS3, dSnare, dKickS3, $06
	dc.b	$06, dSnare, $0D, dKickS3, $0C
	smpsLoop            $00, $02, DRMBM_Configuration_Loop04

DRMBM_Configuration_Loop05:
	dc.b	dSnare, $09, dKickS3, $03, $06, $06, dSnare, $0C, dKickS3, dSnare, dKickS3, $06
	dc.b	$06, dSnare, $0C, dKickS3, $0D
	smpsLoop            $00, $02, DRMBM_Configuration_Loop05
	dc.b	dSnare, $09, dKickS3, $03, $06, $06, dSnare, $0D, dKickS3, $0C, dSnare, dKickS3
	dc.b	$06, $06, dSnare, $0C, dKickS3, dSnare, $09, dKickS3, $03, $06, $06, dSnare
	dc.b	$0C, dKickS3, $0D, dSnare, $0C, dKickS3, $06, $06, dSnare, $0C, dKickS3, dSnare
	dc.b	$09, dKickS3, $03, $06, $06, dSnare, $0C, dKickS3, $02
	smpsJump            DRMBM_Configuration_Jump00

; FM1 Data
DRMBM_Configuration_FM1:
	smpsPan             panCenter, $00
	smpsAlterNote       $09
	smpsSetvoice        $00

DRMBM_Configuration_Loop19:
	smpsModOff
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsModOff
	smpsPan             panCenter, $00
	smpsLoop            $00, $02, DRMBM_Configuration_Loop19
	smpsModOff
	dc.b	nF3, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $33
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $33

DRMBM_Configuration_Jump04:
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $03
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $02, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $09
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $03
	smpsAlterNote       $0C
	dc.b	nBb2, nRst
	smpsAlterNote       $06
	dc.b	nC3, nRst
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $09
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	nRst, $03
	smpsAlterNote       $06
	dc.b	nC3, nRst
	smpsAlterNote       $0C
	dc.b	nBb2, nRst
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $09
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01, nRst, $03
	smpsAlterNote       $06
	dc.b	nC3, nRst
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04

DRMBM_Configuration_Loop1A:
	dc.b	nRst, $02, nG2, $01
	smpsLoop            $00, $05, DRMBM_Configuration_Loop1A
	dc.b	nRst, $0C, nRst, $03, nRst, $03, nG2, $01, nRst, $05
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nB2, $04, nRst, $32
	smpsAlterNote       $08
	dc.b	nG2, $01, nRst, $02, nG2, $01, nRst, $02, nG2, $01, nRst, $06
	dc.b	nRst, $09

DRMBM_Configuration_Loop1B:
	dc.b	nG2, $01, nRst, $02
	smpsLoop            $00, $03, DRMBM_Configuration_Loop1B
	dc.b	nG2, $01, nRst, $05
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nB2, $04, nRst, $33
	smpsAlterNote       $08
	dc.b	nRst, $06, nRst, $03, nRst, $03, nRst, $06

DRMBM_Configuration_Loop1C:
	dc.b	nG2, $01, nRst, $02
	smpsLoop            $00, $04, DRMBM_Configuration_Loop1C
	dc.b	nG2, $01, nRst, $05
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nB2, $04, nRst, $33
	smpsAlterNote       $08
	dc.b	nRst, $06, nRst, $03, nG2, $01, nRst, $02, nG2, $01, nRst, $05

DRMBM_Configuration_Loop1D:
	dc.b	nG2, $01, nRst, $02
	smpsLoop            $00, $04, DRMBM_Configuration_Loop1D
	dc.b	nG2, $01, nRst, $05
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nB2, $04, nRst, $33
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $09
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	nRst, $03
	smpsAlterNote       $06
	dc.b	nC3, nRst
	smpsAlterNote       $0C
	dc.b	nBb2, nRst
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $09
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01, nRst, $03
	smpsAlterNote       $06
	dc.b	nC3, nRst
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $09
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $03
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01, nRst, $03
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $09
	dc.b	nF3, $09
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $03
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $02, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $63

DRMBM_Configuration_Loop1E:
	dc.b	nG2, $01, nRst, $02
	smpsLoop            $00, $04, DRMBM_Configuration_Loop1E
	dc.b	nG2, $01, nRst, $05
	smpsLoop            $01, $02, DRMBM_Configuration_Loop1E
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nB2, $04, nRst, $03, nRst, $7F, nRst, $12
	smpsAlterNote       $08

DRMBM_Configuration_Loop1F:
	dc.b	nG2, $01, nRst, $02
	smpsLoop            $00, $04, DRMBM_Configuration_Loop1F
	dc.b	nG2, $01, nRst, $05

DRMBM_Configuration_Loop20:
	dc.b	nG2, $01, nRst, $02
	smpsLoop            $00, $03, DRMBM_Configuration_Loop20
	dc.b	nG2, $01, nRst, $09
	smpsAlterNote       $0C
	dc.b	nBb2, $03, nRst
	smpsAlterNote       $06
	dc.b	nB2, $04, nRst, $32
	smpsAlterNote       $09
	dc.b	nF3, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $02
	smpsAlterNote       $08
	dc.b	nEb3, $09
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01, nRst, $03
	smpsAlterNote       $06
	dc.b	nC3, nRst
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $32
	smpsAlterNote       $09
	dc.b	nF3, $09
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	nRst, $03
	smpsAlterNote       $08
	dc.b	nEb3, $08
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01, nRst, $03
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nBb2, $04, nRst, $02
	smpsAlterNote       $06
	dc.b	nC3, $04, nRst, $32
	smpsAlterNote       $09
	smpsJump            DRMBM_Configuration_Jump04

; FM2 Data
DRMBM_Configuration_FM2:
	smpsPan             panCenter, $00
	smpsAlterNote       $02
	smpsPan             panCenter, $00
	smpsAlterNote       $09

DRMBM_Configuration_Loop18:
	smpsSetvoice        $01
	smpsModOff
	smpsPan             panCenter, $00
	smpsLoop            $00, $04, DRMBM_Configuration_Loop18
	smpsSetvoice        $01
	smpsModOff
	dc.b	nRst, $7F, nRst, $43

DRMBM_Configuration_Jump03:
	smpsSetvoice        $04
	dc.b	nRst, $06
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $06
	smpsAlterNote       $09
	dc.b	nF4, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $07, nAb4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $01, nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01, nAb4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $0D, nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nC5, $06
	smpsAlterNote       $0C
	dc.b	nBb4
	smpsAlterNote       $0B
	dc.b	nAb4, nRst, $01
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $07, nAb4, $05, nRst, $01
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01, nBb4, $05, nRst, $07
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $13
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $06
	smpsAlterNote       $06
	dc.b	nC5
	smpsAlterNote       $0C
	dc.b	nBb4, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $07, nAb4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $04, nF4, $02, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $02, nRst, $04, nAb4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $0D, nF4, $06
	smpsAlterNote       $0B
	dc.b	nAb4
	smpsAlterNote       $06
	dc.b	nC5, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $07, nAb4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $07
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $3E
	smpsSetvoice        $01
	smpsAlterVol        $0B
	dc.b	nF4, $08
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $0B
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote       $18
	dc.b	smpsNoAttack, nF4
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nFs4
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, nF4
	smpsAlterNote       $EE
	dc.b	nRst, $02
	smpsAlterNote       $08
	dc.b	nG4, $09
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $0B
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nG4
	smpsAlterNote       $E4
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote       $08
	dc.b	smpsNoAttack, nG4
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $06
	dc.b	nB4, $08
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $0C
	smpsAlterNote       $1C
	dc.b	smpsNoAttack, nBb4, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $07
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $1C
	dc.b	nRst, $03
	smpsAlterNote       $06
	dc.b	nC5, $08
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $0B
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $06
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, nB4, nRst, $02
	smpsAlterNote       $07
	dc.b	nD5, $08
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $0C
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nEb5
	smpsAlterNote       $EA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F8
	dc.b	smpsNoAttack, nD5
	smpsAlterNote       $F6
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $ED
	dc.b	smpsNoAttack, nEb5
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, nD5
	smpsAlterNote       $EC
	dc.b	nRst, $03
	smpsAlterNote       $09
	dc.b	nF5, $08
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $0A
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $14
	dc.b	smpsNoAttack, nE5
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $09
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $18
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EE
	dc.b	nRst, $02
	smpsAlterNote       $0A
	dc.b	nFs5, $08
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $0C
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $1B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $19
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $18
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $1B
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $EE
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $EF
	dc.b	nRst, $03
	smpsSetvoice        $04
	dc.b	nRst, $06
	smpsAlterNote       $09
	smpsAlterVol        $F5
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $07, nAb4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $06, nF4
	smpsAlterNote       $0B
	dc.b	nAb4, nRst, $01, nAb4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $0D, nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $07, nAb4, $06
	smpsAlterNote       $09
	dc.b	nF4, nBb4, nRst, $07
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $13
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $07, nAb4, $06
	smpsAlterNote       $0C
	dc.b	nBb4, nRst, $04, nF4, $02, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $02, nRst, $04, nAb4, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $0D, nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $06
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $06, nRst, nAb4, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0B
	dc.b	nAb4, $05, nRst, $07
	smpsAlterNote       $09
	dc.b	nF4, $05, nRst, $64, nRst, $63, nRst, $63, nRst, $63, nRst, $63
	dc.b	nRst, $63
	smpsJump            DRMBM_Configuration_Jump03

; FM3 Data
DRMBM_Configuration_FM3:
	smpsPan             panCenter, $00
	smpsAlterNote       $02
	smpsPan             panCenter, $00
	smpsAlterNote       $0D

DRMBM_Configuration_Loop17:
	smpsSetvoice        $01
	smpsModOff
	smpsPan             panCenter, $00
	smpsLoop            $00, $04, DRMBM_Configuration_Loop17
	smpsSetvoice        $01
	smpsModOff
	dc.b	nRst, $08
	smpsPan             panRight, $00
	dc.b	nRst, $7F, nRst, $3B

DRMBM_Configuration_Jump02:
	dc.b	nRst, $08
	smpsSetvoice        $04
	dc.b	nRst, $06
	smpsAlterNote       $0D
	dc.b	nRst, $06, nAb4
	smpsAlterNote       $0A
	dc.b	nC5, nRst, $01
	smpsAlterNote       $10
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nF4, $05, nRst, $01, nAb4, $05, nRst, $07, nAb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nF4, $05, nRst, $01, nAb4, $05, nRst, $01, nAb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nBb4, $05, nRst, $0D
	smpsAlterNote       $0D
	dc.b	nF4, $06, nRst, $01, nAb4, $05, nRst, $01
	smpsAlterNote       $0A
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $10
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nF4, $05, nRst, $01, nAb4, $05, nRst, $07, nAb4, $05, nRst, $01
	dc.b	nF4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nBb4, $05, nRst, $07, nAb4, $05, nRst, $14
	smpsAlterNote       $0D
	dc.b	nF4, $05, nRst, $01, nAb4, $05, nRst, $01
	smpsAlterNote       $0A
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $10
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nF4, $05, nRst, $01, nAb4, $05, nRst, $07, nAb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nBb4, $05, nRst, $04
	smpsAlterNote       $0D
	dc.b	nF4, $02, nRst, $01, nAb4, $02, nRst, $04, nAb4, $06
	smpsAlterNote       $0F
	dc.b	nBb4, nRst, $0D
	smpsAlterNote       $0D
	dc.b	nF4, $05, nRst, $01, nAb4, $05, nRst, $01
	smpsAlterNote       $0A
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $10
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nAb4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nF4, $05, nRst, $01, nAb4, $05, nRst, $07, nAb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nBb4, $05, nRst, $01, nAb4, $05, nRst, $07
	smpsAlterNote       $0D
	dc.b	nF4, $06, nRst, $3D
	smpsSetvoice        $01
	smpsAlterVol        $09
	dc.b	nF4, $08
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $09
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $0C
	dc.b	nG4, $08
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $0B
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote       $0C
	dc.b	smpsNoAttack, nG4
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, nAb4
	smpsAlterNote       $1C
	dc.b	smpsNoAttack, nG4
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	nRst, $02
	smpsAlterNote       $0A
	dc.b	nB4, $08
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $0C
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F7
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $10
	dc.b	smpsNoAttack, nBb4
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, nB4
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC5, $08
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $03
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $0B
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nB4, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $09
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EF
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $F9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, nC5
	smpsAlterNote       $EF
	dc.b	nRst, $02
	smpsAlterNote       $0B
	dc.b	nD5, $09
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $05
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $04
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, $0C
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FA
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F1
	dc.b	smpsNoAttack, nEb5
	smpsAlterNote       $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, nD5
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, nCs5
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, nD5
	smpsAlterNote       $05
	dc.b	smpsNoAttack, nEb5
	smpsAlterNote       $0B
	dc.b	smpsNoAttack, nD5
	smpsAlterNote       $F0
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF5, $08
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $10
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $0B
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $EB
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FE
	dc.b	smpsNoAttack, nF5
	smpsAlterNote       $F2
	dc.b	nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs5, $09
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $08
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $12
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0A
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $11
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $0B
	smpsAlterNote       $FF
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FD
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $E8
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $F2
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $E9
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	smpsNoAttack, nG5
	smpsAlterNote       $0E
	dc.b	smpsNoAttack, nFs5
	smpsAlterNote       $F3
	dc.b	smpsNoAttack, $01, nRst, $02
	smpsSetvoice        $04
	dc.b	nRst, $06
	smpsAlterNote       $0D
	smpsAlterVol        $F7
	dc.b	nF4, $05, nRst, $01, nAb4, $05, nRst, $01
	smpsAlterNote       $10
	dc.b	nC5, $05, nRst, $01, nBb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nAb4, $05, nRst, $01, nF4, $05, nRst, $0E, nAb4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $11
	dc.b	nF4, $05, nRst, $07, nAb4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nBb4, $05, nRst, $0D
	smpsAlterNote       $11
	dc.b	nF4, $05, nRst, $01, nAb4, $05, nRst, $01
	smpsAlterNote       $10
	dc.b	nC5, $05, nRst, $01, nBb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nAb4, $06, nF4, nF4, $01, nRst, $0C, nAb4, $05, nRst, $01, nF4
	dc.b	$05, nRst, $01
	smpsAlterNote       $0C
	dc.b	nBb4, $05, nRst, $07
	smpsAlterNote       $0F
	dc.b	nAb4, $05, nRst, $13, nF4, $05, nRst, $01, nAb4, $05, nRst, $01
	smpsAlterNote       $0A
	dc.b	nC5, $05, nRst, $01
	smpsAlterNote       $10
	dc.b	nBb4, $06
	smpsAlterNote       $0F
	dc.b	nAb4, nF4, nRst, $0D, nAb4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nBb4, $05, nRst, $04
	smpsAlterNote       $11
	dc.b	nF4, $02, nRst, $07, nAb4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nBb4, $05, nRst, $0D
	smpsAlterNote       $11
	dc.b	nF4, $05, nRst, $01, nAb4, $05, nRst, $01
	smpsAlterNote       $10
	dc.b	nC5, $06, nBb4
	smpsAlterNote       $0F
	dc.b	nAb4, nRst, $01, nF4, $05, nRst, $0D, nAb4, $05, nRst, $01
	smpsAlterNote       $0D
	dc.b	nBb4, $05, nRst, $01
	smpsAlterNote       $0F
	dc.b	nAb4, $05, nRst, $07, nF4, $05, nRst, $5F, nRst, $52, nRst, $52
	dc.b	nRst, $52, nRst, $52, nRst, $52, nRst, $52
	smpsJump            DRMBM_Configuration_Jump02

; FM4 Data
DRMBM_Configuration_FM4:
	smpsPan             panCenter, $00
	smpsAlterNote       $02
	smpsPan             panCenter, $00
	smpsAlterNote       $0B
	smpsSetvoice        $02

DRMBM_Configuration_Loop10:
	smpsModOff
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsModOff
	smpsPan             panCenter, $00
	smpsLoop            $00, $02, DRMBM_Configuration_Loop10
	smpsModOff
	dc.b	nRst, $7F, nRst, $43

DRMBM_Configuration_Jump01:
	dc.b	nRst

DRMBM_Configuration_Loop11:
	dc.b	$68
	smpsLoop            $00, $07, DRMBM_Configuration_Loop11
	smpsAlterNote       $0B
	dc.b	nRst, $03

DRMBM_Configuration_Loop12:
	dc.b	nAb4, $01, nRst, $02
	smpsLoop            $00, $0A, DRMBM_Configuration_Loop12
	dc.b	nAb4, $01, nRst, $06, nRst, $03, nRst, $03, nRst, $7F, nRst, $7F
	dc.b	nRst, $7F, nRst, $0A

DRMBM_Configuration_Loop13:
	dc.b	nAb4, $01, nRst, $02
	smpsLoop            $00, $0F, DRMBM_Configuration_Loop13
	dc.b	nAb4, $01, nRst, $33

DRMBM_Configuration_Loop14:
	dc.b	nAb4, $01, nRst, $02
	smpsLoop            $00, $0D, DRMBM_Configuration_Loop14
	dc.b	nAb4, $01, nRst, $06, nRst, $33

DRMBM_Configuration_Loop15:
	dc.b	nAb4, $01, nRst, $02
	smpsLoop            $00, $0B, DRMBM_Configuration_Loop15
	dc.b	nAb4, $01, nRst, $06, nRst, $03, nRst, $03, nRst, $33

DRMBM_Configuration_Loop16:
	dc.b	nAb4, $01, nRst, $02
	smpsLoop            $00, $08, DRMBM_Configuration_Loop16
	dc.b	nAb4, $01, nRst, $06, nRst, $03, nRst, $03, nRst, $03, nRst, $03
	dc.b	nAb4, $01, nRst, $02, nAb4, $01, nRst, $33, nRst, $7F, nRst, $42
	smpsJump            DRMBM_Configuration_Jump01

; FM5 Data
DRMBM_Configuration_FM5:
	smpsPan             panCenter, $00
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	smpsSetvoice        $03

DRMBM_Configuration_Loop06:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	smpsLoop            $00, $02, DRMBM_Configuration_Loop06

DRMBM_Configuration_Loop07:
	dc.b	nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $0B
	smpsLoop            $00, $02, DRMBM_Configuration_Loop07
	dc.b	nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $36

DRMBM_Configuration_Loop08:
	dc.b	nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $0B
	smpsLoop            $00, $02, DRMBM_Configuration_Loop08
	dc.b	nC6, $01, nRst, $02, nC6, nRst, $01, nC6, $02, nRst, $35

DRMBM_Configuration_Loop09:
	dc.b	nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $0B
	smpsLoop            $00, $02, DRMBM_Configuration_Loop09
	dc.b	nC6, $02, nRst, $01, nC6, $02, nRst, nC6, $01, nRst, $05, nC6
	dc.b	$01, nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $29, nC6
	dc.b	$01, nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $0B, nC6
	dc.b	$01, nRst, $02, nC6, $01, nRst, $02, nC6, nRst, $0B, nC6, $01
	dc.b	nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $05, nC6, $01
	dc.b	nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $29, nC6, $01
	dc.b	nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $0B, nC6, $02
	dc.b	nRst, $01, nC6, $02, nRst, $01, nC6, $02, nRst, $0B, nC6, $01
	dc.b	nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $05, nC6, $01
	dc.b	nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $29, nC6, $01
	dc.b	nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $0C, nC6, $01
	dc.b	nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $0B, nC6, $01
	dc.b	nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $05, nC6, $01
	dc.b	nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $29, nC6, $01
	dc.b	nRst, $02, nC6, $01, nRst, $02, nC6

DRMBM_Configuration_Loop0A:
	dc.b	nRst, $0B, nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01
	smpsLoop            $00, $02, DRMBM_Configuration_Loop0A
	dc.b	nRst, $05, nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01
	dc.b	nRst, $2A, nC6, $01, nRst, nC6, $02, nRst, $01, nC6, $02

DRMBM_Configuration_Loop0B:
	dc.b	nRst, $0B, nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01
	smpsLoop            $00, $02, DRMBM_Configuration_Loop0B
	dc.b	nRst, $05, nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01
	dc.b	nRst, $2A, nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01
	smpsLoop            $01, $05, DRMBM_Configuration_Loop0B

DRMBM_Configuration_Loop0C:
	dc.b	nRst, $0B, nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01
	smpsLoop            $00, $02, DRMBM_Configuration_Loop0C
	dc.b	nRst, $05, nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, nRst
	dc.b	$29

DRMBM_Configuration_Loop0D:
	dc.b	nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $0B
	smpsLoop            $00, $02, DRMBM_Configuration_Loop0D
	dc.b	nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01, nRst, $05
	dc.b	nC6, $02, nRst, $01, nC6, $02, nRst, $01, nC6, $02

DRMBM_Configuration_Loop0E:
	dc.b	nRst, $7F, nRst, $3C, nC6, $01, nRst, $02, nC6, $01, nRst, $02
	dc.b	nC6, $01
	smpsLoop            $00, $02, DRMBM_Configuration_Loop0E
	dc.b	nRst, $2C, nC6, $01, nRst, $02, nC6, $01, nRst, $0B, nC6, $02
	dc.b	nRst, $01, nC6, $02, nRst, nC6, $01, nRst, $0B, nC6, $01, nRst
	dc.b	$02, nC6, $01, nRst, $02, nC6, $01, nRst, $35, nC6, $01, nRst
	dc.b	$02, nC6, $01, nRst, $02, nC6

DRMBM_Configuration_Loop0F:
	dc.b	nRst, $0B, nC6, $01, nRst, $02, nC6, $01, nRst, $02, nC6, $01
	smpsLoop            $00, $02, DRMBM_Configuration_Loop0F
	dc.b	nRst, $35
	smpsJump            DRMBM_Configuration_Loop09

; PSG3 Data
DRMBM_Configuration_PSG3:
	smpsPSGform         $E7
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05

DRMBM_Configuration_Loop21:
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsLoop            $00, $02, DRMBM_Configuration_Loop21
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $00

DRMBM_Configuration_Loop22:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop22

DRMBM_Configuration_Loop23:
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop23
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06

DRMBM_Configuration_Loop24:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $03, DRMBM_Configuration_Loop24

DRMBM_Configuration_Jump05:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	$05

DRMBM_Configuration_Loop25:
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsLoop            $00, $02, DRMBM_Configuration_Loop25
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $00

DRMBM_Configuration_Loop26:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop26

DRMBM_Configuration_Loop27:
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop27
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06

DRMBM_Configuration_Loop28:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $03, DRMBM_Configuration_Loop28
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$05

DRMBM_Configuration_Loop29:
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsLoop            $00, $02, DRMBM_Configuration_Loop29
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06

DRMBM_Configuration_Loop2A:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $03, DRMBM_Configuration_Loop2A
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06

DRMBM_Configuration_Loop2B:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $03, DRMBM_Configuration_Loop2B
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop2C:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop2C
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop2D:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop2D
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop2E:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop2E
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop2F:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop2F
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop30:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop30
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop31:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop31
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02

DRMBM_Configuration_Loop32:
	dc.b	$03
	smpsPSGAlterVol     $00
	smpsLoop            $00, $03, DRMBM_Configuration_Loop32
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop33:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop33
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop34:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop34
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop35:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop35
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop36:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop36
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop37:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop37
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop38:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop38
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop39:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop39
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop3A:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop3A
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop3B:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop3B
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop3C:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop3C
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop3D:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop3D
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02

DRMBM_Configuration_Loop3E:
	dc.b	$03
	smpsPSGAlterVol     $00
	smpsLoop            $00, $03, DRMBM_Configuration_Loop3E
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop3F:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop3F
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop40:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop40
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop41:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop41
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop42:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop42
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop43:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop43
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$03

DRMBM_Configuration_Loop44:
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, DRMBM_Configuration_Loop44

DRMBM_Configuration_Loop45:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $03, DRMBM_Configuration_Loop45
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$05

DRMBM_Configuration_Loop46:
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsLoop            $00, $02, DRMBM_Configuration_Loop46
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $00

DRMBM_Configuration_Loop47:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop47

DRMBM_Configuration_Loop48:
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop48
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $00

DRMBM_Configuration_Loop49:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop49

DRMBM_Configuration_Loop4A:
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop4A
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$05

DRMBM_Configuration_Loop4B:
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsLoop            $00, $02, DRMBM_Configuration_Loop4B
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $00

DRMBM_Configuration_Loop4C:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop4C

DRMBM_Configuration_Loop4D:
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop4D
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $00

DRMBM_Configuration_Loop4E:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop4E

DRMBM_Configuration_Loop4F:
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop4F
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$05

DRMBM_Configuration_Loop50:
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsLoop            $00, $02, DRMBM_Configuration_Loop50
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06

DRMBM_Configuration_Loop51:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $03, DRMBM_Configuration_Loop51
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05

DRMBM_Configuration_Loop52:
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsLoop            $00, $02, DRMBM_Configuration_Loop52
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $00

DRMBM_Configuration_Loop53:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop53

DRMBM_Configuration_Loop54:
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop54
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$05
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop55:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop55
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop56:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop56
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02

DRMBM_Configuration_Loop57:
	dc.b	$03
	smpsPSGAlterVol     $00
	smpsLoop            $00, $03, DRMBM_Configuration_Loop57
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop58:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop58
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop59:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop59
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop5A:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop5A
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop5B:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop5B
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop5C:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop5C
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop5D:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop5D
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop5E:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop5E
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop5F:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop5F
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop60:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop60
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01

DRMBM_Configuration_Loop61:
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $02, DRMBM_Configuration_Loop61
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop62:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop62
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop63:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop63
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $02

DRMBM_Configuration_Loop64:
	dc.b	$03
	smpsPSGAlterVol     $00
	smpsLoop            $00, $03, DRMBM_Configuration_Loop64
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop65:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop65
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop66:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop66
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop67:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop67
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop68:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop68
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop69:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop69
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop6A:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop6A
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop6B:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop6B
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE

DRMBM_Configuration_Loop6C:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, DRMBM_Configuration_Loop6C
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $01

DRMBM_Configuration_Loop6D:
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $02, DRMBM_Configuration_Loop6D
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop6E:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop6E
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

DRMBM_Configuration_Loop6F:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, DRMBM_Configuration_Loop6F
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsJump            DRMBM_Configuration_Jump05

; PSG1 Data
DRMBM_Configuration_PSG1:
; PSG2 Data
DRMBM_Configuration_PSG2:
	smpsStop

DRMBM_Configuration_Voices:
;	Voice $00
;	$28
;	$39, $35, $30, $31, 	$1F, $1F, $1F, $1F, 	$0C, $0A, $07, $0A
;	$07, $07, $07, $09, 	$26, $16, $16, $F6, 	$17, $32, $14, $09
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $07, $0A, $0C
	smpsVcDecayRate2    $09, $07, $07, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $09, $14, $32, $17

;	Voice $01
;	$34
;	$02, $72, $11, $01, 	$1F, $10, $1F, $14, 	$00, $0A, $00, $00
;	$00, $00, $00, $00, 	$02, $F8, $02, $08, 	$14, $15, $5C, $10
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $07, $00
	smpsVcCoarseFreq    $01, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $1F, $10, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0A, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0F, $00
	smpsVcReleaseRate   $08, $02, $08, $02
	smpsVcTotalLevel    $10, $5C, $15, $14

;	Voice $02
;	$3D
;	$01, $00, $01, $01, 	$8F, $59, $59, $59, 	$02, $05, $05, $05
;	$00, $00, $00, $00, 	$18, $4C, $1C, $2C, 	$17, $0B, $15, $15
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $00, $01
	smpsVcRateScale     $01, $01, $01, $02
	smpsVcAttackRate    $19, $19, $19, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $02
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $04, $01
	smpsVcReleaseRate   $0C, $0C, $0C, $08
	smpsVcTotalLevel    $15, $15, $0B, $17

;	Voice $03
;	$06
;	$0E, $02, $01, $08, 	$92, $14, $15, $12, 	$0A, $00, $00, $00
;	$00, $00, $00, $00, 	$13, $0A, $0A, $0A, 	$32, $15, $15, $1F
	smpsVcAlgorithm     $06
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $08, $01, $02, $0E
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $12, $15, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $03
	smpsVcTotalLevel    $1F, $15, $15, $32

;	Voice $04
;	$3E
;	$08, $05, $72, $12, 	$1F, $0F, $0F, $0F, 	$07, $0F, $07, $09
;	$00, $00, $00, $00, 	$FD, $FD, $FF, $FF, 	$19, $10, $24, $24
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $00, $00
	smpsVcCoarseFreq    $02, $02, $05, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $0F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $07, $0F, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0D, $0D
	smpsVcTotalLevel    $24, $24, $10, $19

