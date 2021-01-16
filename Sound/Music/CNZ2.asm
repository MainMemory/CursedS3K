Snd_CNZ2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_CNZ2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $44

	smpsHeaderDAC       Snd_CNZ2_DAC
	smpsHeaderFM        Snd_CNZ2_FM1,	$00, $0C
	smpsHeaderFM        Snd_CNZ2_FM2,	$00, $06
	smpsHeaderFM        Snd_CNZ2_FM3,	$00, $07
	smpsHeaderFM        Snd_CNZ2_FM4,	$00, $05
	smpsHeaderFM        Snd_CNZ2_FM1,	$0C, $13
	smpsHeaderPSG       Snd_CNZ2_PSG1,	$F4, $04, $00, $00
	smpsHeaderPSG       Snd_CNZ2_PSG2,	$F4, $04, $00, $00
	smpsHeaderPSG       Snd_CNZ2_PSG3,	$23, $02, $00, $00

; FM1 Data
Snd_CNZ2_FM1:
	dc.b	nRst, $60
	smpsJump            Snd_CNZ2_FM1

; FM2 Data
Snd_CNZ2_FM2:
	smpsSetvoice        $01

Snd_CNZ2_Loop05:
	dc.b	nC2, $0C, nRst, $18, nC2, $0C, nRst, $30
	smpsJump            Snd_CNZ2_Loop05

; FM3 Data
Snd_CNZ2_FM3:
	smpsPan             panLeft, $00
	smpsNoteFill        $06
	smpsSetvoice        $02
	dc.b	nRst, $0C, nG4, $18, nG4, nG4, nG4, $0C
	smpsJump            Snd_CNZ2_FM3

; FM4 Data
Snd_CNZ2_FM4:
	smpsPan             panRight, $00
	smpsNoteFill        $06
	smpsSetvoice        $02
	dc.b	nC4, $0C, nE4, nG3, nE4, nC4, nE4, nG3, nE4
	smpsJump            Snd_CNZ2_FM4

; PSG1 Data
Snd_CNZ2_PSG1:
	smpsNoteFill        $06
	smpsPSGvoice        sTone_05
	smpsModChange       $02
	dc.b	nRst, $0C, nG4, $18, nG4, nG4, nG4, $0C
	smpsJump            Snd_CNZ2_PSG1

; PSG2 Data
Snd_CNZ2_PSG2:
	smpsPSGvoice        sTone_12
	smpsModChange       $02
	smpsNoteFill        $06
	dc.b	nC4, $0C, nE4, nG3, nE4, nC4, nE4, nG3, nE4
	smpsJump            Snd_CNZ2_PSG2

; PSG3 Data
Snd_CNZ2_PSG3:
	smpsPSGvoice        sTone_01
	smpsPSGform         $E7

Snd_CNZ2_Loop09:
	dc.b	(nMaxPSG2-$23)&$FF, $08, $04, $04, nRst, $08
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGAlterVol     $02
	dc.b	nRst, $08, (nMaxPSG2-$23)&$FF, $08, $04, (nMaxPSG2-$23)&$FF, nRst, $14
	smpsPSGAlterVol     $FE
	dc.b	(nMaxPSG2-$23)&$FF, $04
	smpsPSGAlterVol     $02
	dc.b	nRst, $14
	smpsJump            Snd_CNZ2_Loop09

; DAC Data
Snd_CNZ2_DAC:
	dc.b	dPowerKick, $0C, dClick, dQuickGlassCrash, $24, dPowerKick, $0C, dQuickGlassCrash, dQuickGlassCrash
	smpsJump            Snd_CNZ2_DAC

Snd_CNZ2_Voices:
;	Voice $00
;	$3B
;	$01, $02, $04, $02, 	$18, $1B, $19, $16, 	$1C, $19, $1D, $1F
;	$0A, $02, $02, $03, 	$0F, $1F, $1F, $1E, 	$26, $1B, $1B, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $04, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $19, $1B, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1D, $19, $1C
	smpsVcDecayRate2    $03, $02, $02, $0A
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0E, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1B, $1B, $26

;	Voice $01
;	$25
;	$31, $12, $0A, $22, 	$1F, $1F, $1F, $1F, 	$0E, $0B, $10, $0E
;	$10, $00, $00, $00, 	$E7, $3F, $3F, $3F, 	$0B, $88, $88, $88
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $00, $01, $03
	smpsVcCoarseFreq    $02, $0A, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $10, $0B, $0E
	smpsVcDecayRate2    $00, $00, $00, $10
	smpsVcDecayLevel    $03, $03, $03, $0E
	smpsVcReleaseRate   $0F, $0F, $0F, $07
	smpsVcTotalLevel    $08, $08, $08, $0B

;	Voice $02
;	$3B
;	$04, $32, $03, $01, 	$14, $0E, $12, $4E, 	$00, $10, $12, $0C
;	$00, $00, $00, $00, 	$0F, $5F, $9F, $2F, 	$00, $3E, $26, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $01, $03, $02, $04
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0E, $12, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $12, $10, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $09, $05, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $26, $3E, $00

;	Voice $03
;	$3B
;	$0C, $02, $03, $02, 	$59, $1C, $1E, $1F, 	$0C, $04, $08, $07
;	$02, $03, $03, $04, 	$EF, $DF, $DF, $DF, 	$30, $2A, $2A, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $03, $02, $0C
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1F, $1E, $1C, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $08, $04, $0C
	smpsVcDecayRate2    $04, $03, $03, $02
	smpsVcDecayLevel    $0D, $0D, $0D, $0E
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2A, $2A, $30

;	Voice $04
;	$3B
;	$72, $02, $32, $02, 	$6C, $1B, $12, $12, 	$05, $07, $02, $10
;	$03, $00, $00, $00, 	$EF, $FF, $2F, $1F, 	$2A, $33, $30, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $12, $12, $1B, $2C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $02, $07, $05
	smpsVcDecayRate2    $00, $00, $00, $03
	smpsVcDecayLevel    $01, $02, $0F, $0E
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $30, $33, $2A

;	Voice $05
;	$03
;	$02, $03, $10, $11, 	$15, $10, $12, $18, 	$10, $0C, $1C, $0D
;	$00, $1A, $00, $16, 	$3F, $5F, $6F, $5B, 	$0F, $18, $1C, $84
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $00, $00
	smpsVcCoarseFreq    $01, $00, $03, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $18, $12, $10, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $1C, $0C, $10
	smpsVcDecayRate2    $16, $00, $1A, $00
	smpsVcDecayLevel    $05, $06, $05, $03
	smpsVcReleaseRate   $0B, $0F, $0F, $0F
	smpsVcTotalLevel    $04, $1C, $18, $0F

