Mus_SinkSanct_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Mus_SinkSanct_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Mus_SinkSanct_DAC,	$00, $F2
	smpsHeaderFM        Mus_SinkSanct_FM1,	$00, $00
	smpsHeaderFM        Mus_SinkSanct_FM2,	$00, $00
	smpsHeaderFM        Mus_SinkSanct_FM3,	$00, $00
	smpsHeaderFM        Mus_SinkSanct_FM4,	$00, $00
	smpsHeaderFM        Mus_SinkSanct_FM5,	$00, $00
	smpsHeaderFM        Mus_SinkSanct_FM6,	$00, $00
	smpsHeaderPSG       Mus_SinkSanct_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Mus_SinkSanct_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Mus_SinkSanct_PSG3,	$00, $00, $00, $00

; DAC Data
Mus_SinkSanct_DAC:
; FM6 Data
Mus_SinkSanct_FM6:
; PSG1 Data
Mus_SinkSanct_PSG1:
; PSG2 Data
Mus_SinkSanct_PSG2:
; PSG3 Data
Mus_SinkSanct_PSG3:
	smpsStop

; FM1 Data
Mus_SinkSanct_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $1D
	smpsPan             panCenter, $00
	dc.b	nCs6, $17, nRst, $08, nB5, $18, nRst, $08
	smpsAlterNote       $01
	dc.b	nFs5, $27
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $18, nRst, $01
	smpsModOff
	smpsAlterNote       $00
	dc.b	nAb5, $0C, nRst, $05, nB5, $0B, nRst, $05, nEb6, $18, nRst, $08
	dc.b	nCs6, $18, nRst, $08, nB5, $18, nRst, $08
	smpsAlterNote       $01
	dc.b	nFs5, $27
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $18, nRst, $01
	smpsModOff
	smpsAlterNote       $00
	dc.b	nAb5, $0C, nRst, $04, nB5, $0C, nRst, $04, nEb6, $18, nRst, $08
	dc.b	nCs6, $18, nRst, $08, nB5, $18, nRst, $08
	smpsAlterNote       $01
	dc.b	nFs5, $28
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $18, nRst, $05
	smpsModOff
	smpsAlterNote       $00
	dc.b	nAb5, $1B
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $03, nRst, $0B
	smpsModOff
	dc.b	nE5, $22
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $04, nRst, $0D
	smpsModOff
	smpsAlterNote       $01
	dc.b	nFs5, $45
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $42, nRst, $14
	smpsSetvoice        $08
	smpsAlterVol        $FB
	smpsModOff
	dc.b	nFs5, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs6, $12, nRst, $03, nB5, $16
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $10, nRst, $05
	smpsModOff
	dc.b	nA5, $08, nRst, $03, nAb5, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs5, $01

Mus_SinkSanct_Jump04:
	dc.b	smpsNoAttack, nFs5, $11, nRst, $04
	smpsAlterNote       $00
	dc.b	nA5, $12, nRst, $03, nCs6, $12, nRst, $05, nB5, $11, nRst, $04
	dc.b	nA5, $16
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $07, nRst, $04
	smpsModOff
	dc.b	nAb5, $09, nRst, $0E
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $09
	smpsModOff
	smpsAlterNote       $01
	dc.b	nFs5, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs6, $12, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs6, $11, nRst, $05
	smpsAlterNote       $00
	dc.b	nAb6, $16
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $07, nRst, $03
	smpsModOff
	dc.b	nE6, $09, nRst, $02, nCs6, $10, nRst, $06, nB5, $15
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $08, nRst, $04
	smpsModOff
	dc.b	nE6, $17
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $06, nRst, $03
	smpsModOff
	dc.b	nCs6, $09, nRst, $02, nB5, $09, nRst, $02, nA5, $09, nRst, $02
	dc.b	nAb5, $09, nRst, $02
	smpsAlterVol        $14
	smpsAlterNote       $01
	dc.b	nFs5, $12, nRst, $03
	smpsAlterVol        $EC
	dc.b	nFs5, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs6, $12, nRst, $03, nB5, $16
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $10, nRst, $06
	smpsModOff
	dc.b	nA5, $07, nRst, $03, nAb5, $08, nRst, $0F
	smpsAlterNote       $01
	dc.b	nFs5, $12, nRst, $03, nFs6, $09, nRst, $02
	smpsAlterNote       $00
	dc.b	nAb6, $09, nRst, $02, nE6, $09, nRst, $02, nA6, $10, nRst, $05
	dc.b	nAb6, $11, nRst, $05, nE6, $17
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $0F, nRst, $05
	smpsModOff
	smpsAlterNote       $01
	dc.b	nFs6, $16
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $07, nRst, $04
	smpsModOff
	smpsAlterNote       $00
	dc.b	nB5, $17
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $06, nRst, $03
	smpsModOff
	dc.b	nCs6, $12, nRst, $04, nE5, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs5, $16
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $65, nRst, $07
	smpsSetvoice        $06
	smpsAlterVol        $03
	smpsModOff
	dc.b	nFs2, $03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG2, $04, smpsNoAttack, nAb2, smpsNoAttack, nA2, $03, smpsNoAttack, nBb2, $04, smpsNoAttack, nB2
	dc.b	$03, smpsNoAttack, nC3, $04, smpsNoAttack, nCs3, smpsNoAttack, nD3, $03, smpsNoAttack, nEb3, $04
	dc.b	smpsNoAttack, nE3, $03, smpsNoAttack, nF3, $04, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $03, smpsNoAttack, nAb3, $04, smpsNoAttack, nA3, $03, smpsNoAttack, nBb3, $04, smpsNoAttack
	dc.b	nB3, smpsNoAttack, nC4, $03, smpsNoAttack, nCs4, $04, smpsNoAttack, nD4, $03, smpsNoAttack, nEb4
	dc.b	$04, smpsNoAttack, nE4, smpsNoAttack, nF4, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nFs4, $03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG4, $04, smpsNoAttack, nAb4, smpsNoAttack, nA4, $03, smpsNoAttack, nBb4, $04, smpsNoAttack, nB4
	dc.b	$03, smpsNoAttack, nC5, $04, smpsNoAttack, nCs5, smpsNoAttack, nD5, $03, smpsNoAttack, nEb5, $04
	dc.b	smpsNoAttack, nE5, $03, smpsNoAttack, nF5, $04
	smpsAlterVol        $06
	dc.b	smpsNoAttack, nC5, smpsNoAttack, nCs5, $03, smpsNoAttack, nD5, $04, smpsNoAttack, nEb5, $03, smpsNoAttack
	dc.b	nE5, $04, smpsNoAttack, nF5, $02, nRst
	smpsSetvoice        $08
	smpsAlterVol        $F7
	smpsAlterNote       $01
	dc.b	nFs5, $12, nRst, $03
	smpsAlterNote       $00
	dc.b	nCs6, $12, nRst, $04, nB5, $16
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $10, nRst, $05
	smpsModOff
	dc.b	nA5, $07, nRst, $04, nAb5, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs5, $12, nRst, $03
	smpsAlterNote       $00
	dc.b	nA5, $12, nRst, $05, nCs6, $11, nRst, $04, nB5, $12, nRst, $04
	dc.b	nA5, $15
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $08, nRst, $03
	smpsModOff
	dc.b	nAb5, $09, nRst, $0F
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $09
	smpsModOff
	smpsAlterNote       $01
	dc.b	nFs5, $12, nRst, $03
	smpsAlterNote       $00
	dc.b	nCs6, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs6, $10, nRst, $06
	smpsAlterNote       $00
	dc.b	nAb6, $15
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $08, nRst, $03
	smpsModOff
	dc.b	nE6, $09, nRst, $02, nCs6, $10, nRst, $06, nB5, $16
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $07, nRst, $04
	smpsModOff
	dc.b	nE6, $17
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $05, nRst, $04
	smpsModOff
	dc.b	nCs6, $09, nRst, $02, nB5, $09, nRst, $02, nA5, $09, nRst, $01
	dc.b	nAb5, $09, nRst, $02
	smpsAlterVol        $14
	smpsAlterNote       $01
	dc.b	nFs5, $12, nRst, $04
	smpsAlterVol        $EC
	dc.b	nFs5, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs6, $12, nRst, $03, nB5, $16
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $10, nRst, $05
	smpsModOff
	dc.b	smpsNoAttack, $01, nA5, $07, nRst, $04, nAb5, $06, nRst, $0F
	smpsAlterNote       $01
	dc.b	nFs5, $12, nRst, $04, nFs6, $09, nRst, $02
	smpsAlterNote       $00
	dc.b	nAb6, $09, nRst, $02, nE6, $09, nRst, $01, nA6, $11, nRst, $05
	dc.b	nAb6, $10, nRst, $06, nE6, $17
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $0F, nRst, $05
	smpsModOff
	smpsAlterNote       $01
	dc.b	nFs6, $16
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $07, nRst, $03
	smpsModOff
	smpsAlterNote       $00
	dc.b	nB5, $18
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $05, nRst, $04
	smpsModOff
	dc.b	nCs6, $12, nRst, $04, nE5, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs5, $15
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $27, nRst, $07
	smpsSetvoice        $09
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $0A
	smpsAlterVol        $FF
	smpsPan             panLeft, $00
	smpsModOff
	dc.b	nFs2, $15
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $28, nRst, $04
	smpsSetvoice        $0C
	smpsAlterVol        $03
	smpsPan             panCenter, $00
	smpsModOff
	smpsAlterNote       $00
	dc.b	nB6, $05, nRst, $06, nA6, $03, smpsNoAttack, nB6, $04, smpsNoAttack, nA6, $02
	dc.b	nRst, $01, nG6, $18
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $14
	smpsModOff
	dc.b	smpsNoAttack, $17
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $02, nRst, $07
	smpsModOff
	smpsAlterNote       $01
	dc.b	nFs6, $09, nRst, $02
	smpsAlterNote       $00
	dc.b	nA6, $09, nRst, $02, nG6, $09, nRst, $02
	smpsAlterNote       $01
	dc.b	nFs6, $10, nRst, $05
	smpsSetvoice        $0E
	smpsAlterVol        $65
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $0B
	smpsAlterVol        $99
	dc.b	nFs3, nRst, $04
	smpsAlterVol        $04
	dc.b	nFs3, $01, nRst, $05
	smpsAlterVol        $FC
	smpsAlterNote       $00
	dc.b	nG3, $01, nRst, $04
	smpsAlterVol        $04
	dc.b	nG3, $01, nRst, $04
	smpsAlterVol        $FC
	dc.b	nBb3, $02, nRst, $04
	smpsAlterVol        $04
	dc.b	nBb3, $02, nRst, $03
	smpsAlterVol        $FC
	smpsAlterNote       $01
	dc.b	nFs4, $02, nRst, $04
	smpsAlterVol        $04
	dc.b	nFs4, $01, nRst, $04
	smpsAlterVol        $FC
	smpsAlterNote       $00
	dc.b	nG4, nRst, $01
	smpsAlterVol        $04
	dc.b	nG4, $04, nRst, $02
	smpsAlterVol        $FC
	dc.b	nBb4, $03, nRst, $02
	smpsAlterVol        $04
	dc.b	nBb4, $04, nRst, $02
	smpsAlterVol        $FC
	smpsAlterNote       $01
	dc.b	nFs5, $03, nRst, $02
	smpsAlterVol        $04
	dc.b	nFs5, $04, nRst, $01
	smpsAlterVol        $FC
	smpsAlterNote       $00
	dc.b	nG5, $04, nRst, $02
	smpsAlterVol        $04
	dc.b	nG5, $03, nRst, $02
	smpsAlterVol        $FC
	dc.b	nBb5, $04, nRst, $02
	smpsAlterVol        $04
	dc.b	nBb5, $03, nRst, $02
	smpsAlterVol        $FC
	smpsAlterNote       $01
	dc.b	nFs6, $04, nRst, $01
	smpsAlterVol        $04
	dc.b	nFs6, $04, nRst, $02
	smpsSetvoice        $0C
	smpsAlterVol        $FE
	smpsAlterNote       $00
	dc.b	nB6, $05, nRst, $06, nA6, $03, smpsNoAttack, nB6, $04, smpsNoAttack, nA6, $02
	dc.b	nRst, $01, nG6, $18
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $14
	smpsModOff
	dc.b	smpsNoAttack, $17
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $02, nRst, $07
	smpsModOff
	smpsAlterNote       $01
	dc.b	nFs6, $09, nRst, $02
	smpsAlterNote       $00
	dc.b	nA6, $09, nRst, $02, nG6, $09, nRst, $02
	smpsAlterNote       $01
	dc.b	nFs6, $10, nRst, $06
	smpsSetvoice        $0B
	smpsAlterVol        $FE
	dc.b	nFs3, $02, nRst, $03
	smpsAlterVol        $04
	dc.b	nFs3, $02, nRst, $04
	smpsAlterVol        $FC
	smpsAlterNote       $00
	dc.b	nG3, $01, nRst, $04
	smpsAlterVol        $04
	dc.b	nG3, $02, nRst, $03
	smpsAlterVol        $FC
	dc.b	nBb3, $02, nRst, $04
	smpsAlterVol        $04
	dc.b	nBb3, $02, nRst, $03
	smpsAlterVol        $FC
	smpsAlterNote       $01
	dc.b	nFs4, $02, nRst, $04
	smpsAlterVol        $04
	dc.b	nFs4, $01, nRst, $04
	smpsAlterVol        $FC
	smpsAlterNote       $00
	dc.b	nG4, nRst, $01
	smpsAlterVol        $04
	dc.b	nG4, $04, nRst, $02
	smpsAlterVol        $FC
	dc.b	nBb4, $03, nRst, $02
	smpsAlterVol        $04
	dc.b	nBb4, $04, nRst, $02
	smpsAlterVol        $FC
	smpsAlterNote       $01
	dc.b	nFs5, $03, nRst, $02
	smpsAlterVol        $04
	dc.b	nFs5, $04, nRst, $02
	smpsAlterVol        $FC
	smpsAlterNote       $00
	dc.b	nG5, $03, nRst, $02
	smpsAlterVol        $04
	dc.b	nG5, $04, nRst, $01
	smpsAlterVol        $FC
	dc.b	nBb5, $04, nRst, $02
	smpsAlterVol        $04
	dc.b	nBb5, $03, nRst, $02
	smpsAlterVol        $FC
	smpsAlterNote       $01
	dc.b	nFs6, $04, nRst, $02
	smpsAlterVol        $04
	dc.b	nFs6, $03, nRst, $02
	smpsAlterVol        $12
	dc.b	nFs3, $10, nRst, $06
	smpsSetvoice        $08
	smpsAlterVol        $EA
	dc.b	nFs5, $12, nRst, $03
	smpsAlterNote       $00
	dc.b	nCs6, $12, nRst, $04, nB5, $15
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $11, nRst, $06
	smpsModOff
	dc.b	nA5, $07, nRst, $03, nAb5, $08, nRst, $03
	smpsPan             panCenter, $00
	smpsModOff
	smpsAlterNote       $01
	smpsJump            Mus_SinkSanct_Jump04

; FM2 Data
Mus_SinkSanct_FM2:
	smpsSetvoice        $00
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $0E
	smpsAlterVol        $A4
	smpsAlterNote       $FE
	dc.b	nCs6, $1C, nRst, $04
	smpsAlterNote       $FD
	dc.b	nB5, $1C, nRst, $04
	smpsAlterNote       $FF
	dc.b	nFs5, $38, nRst, $09
	smpsAlterNote       $FE
	dc.b	nAb5, $0D, nRst, $03
	smpsAlterNote       $FD
	dc.b	nB5, $0D, nRst, $03
	smpsAlterNote       $FE
	dc.b	nEb6, $1C, nRst, $04, nCs6, $1C, nRst, $04
	smpsAlterNote       $FD
	dc.b	nB5, $1C, nRst, $04
	smpsAlterNote       $FF
	dc.b	nFs5, $38, nRst, $08
	smpsAlterNote       $FE
	dc.b	nAb5, $0D, nRst, $03
	smpsAlterNote       $FD
	dc.b	nB5, $0D, nRst, $03
	smpsAlterNote       $FE
	dc.b	nEb6, $1C, nRst, $04, nCs6, $1C, nRst, $04
	smpsAlterNote       $FD
	dc.b	nB5, $1C, nRst, $04
	smpsAlterNote       $FF
	dc.b	nFs5, $40, nRst, $05
	smpsAlterNote       $FE
	dc.b	nAb5, $23, nRst, $05, nE5, $20, nRst, $05
	smpsAlterNote       $FF
	dc.b	nFs5, $16, smpsNoAttack, $41, smpsNoAttack, $20, nRst, $0B
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nFs2, $04, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nG2, $03, smpsNoAttack, nAb2, $04, smpsNoAttack, nA2, smpsNoAttack, nBb2, $03, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nB2, $04, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nC3, $03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nCs3, $04, smpsNoAttack, nD3, smpsNoAttack, nEb3, $03, smpsNoAttack, nE3, $04, smpsNoAttack, nF3
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nFs3, $04, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nG3, smpsNoAttack, nAb3, $03, smpsNoAttack, nA3, $04, smpsNoAttack, nBb3, $03, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nB3, $04, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nCs4, $03, smpsNoAttack, nD4, $04, smpsNoAttack, nEb4, $03, smpsNoAttack, nE4, $04, smpsNoAttack
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nFs4, $03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nG4, $04, smpsNoAttack, nAb4, $03, smpsNoAttack, nA4, $04, smpsNoAttack, nBb4, $04, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nC5, $03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nCs5, $04, smpsNoAttack, nD5, smpsNoAttack, nEb5, $03, smpsNoAttack, nE5, $04, smpsNoAttack, nF5
	dc.b	$03
	smpsAlterVol        $06
	dc.b	smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nC5, $04, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nCs5, smpsNoAttack, nD5, $03, smpsNoAttack, nEb5, $04, smpsNoAttack, nE5, $03, smpsNoAttack, nF5
	dc.b	$04
	smpsAlterVol        $05
	dc.b	smpsNoAttack
	smpsAlterNote       $FF
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nCs5, $03, smpsNoAttack, nD5, $04, smpsNoAttack, nEb5, $03, smpsNoAttack, nE5, $04, smpsNoAttack
	dc.b	nF5, $02, nRst
	smpsSetvoice        $08
	smpsAlterVol        $FA
	smpsAlterNote       $FF
	dc.b	nFs5, $12, nRst, $03
	smpsAlterNote       $FE
	dc.b	nCs6, $12, nRst, $04
	smpsAlterNote       $FD
	dc.b	nB5, $26, nRst, $05
	smpsAlterNote       $FE
	dc.b	nA5, $01

Mus_SinkSanct_Jump03:
	dc.b	smpsNoAttack, nA5, $08, nRst, $02, nAb5, $09, nRst, $02
	smpsAlterNote       $FF
	dc.b	nFs5, $12, nRst, $04
	smpsAlterNote       $FE
	dc.b	nA5, $12, nRst, $04, nCs6, $12, nRst, $03
	smpsAlterNote       $FD
	dc.b	nB5, $12, nRst, $04
	smpsAlterNote       $FE
	dc.b	nA5, $1D, nRst, $03, nAb5, $09, nRst, $18
	smpsAlterNote       $FF
	dc.b	nFs5, $12, nRst, $03
	smpsAlterNote       $FE
	dc.b	nCs6, $12, nRst, $04
	smpsAlterNote       $FF
	dc.b	nFs6, $12, nRst, $04
	smpsAlterNote       $FE
	dc.b	nAb6, $1D, nRst, $03, nE6, $09, nRst, $02, nCs6, $12, nRst, $04
	smpsAlterNote       $FD
	dc.b	nB5, $1D, nRst, $04
	smpsAlterNote       $FE
	dc.b	nE6, $1C, nRst, $04, nCs6, $09, nRst, $02
	smpsAlterNote       $FD
	dc.b	nB5, $09, nRst, $02
	smpsAlterVol        $02
	smpsAlterNote       $FE
	dc.b	nA5, $07, nRst, $03, nAb5, $08, nRst, $03
	smpsAlterVol        $12
	smpsAlterNote       $FF
	dc.b	nFs5, $12, nRst, $04
	smpsAlterVol        $EC
	dc.b	nFs5, $12, nRst, $04
	smpsAlterNote       $FE
	dc.b	nCs6, $12, nRst, $03
	smpsAlterNote       $FD
	dc.b	nB5, $26, nRst, $06
	smpsAlterNote       $FE
	dc.b	nA5, $08, nRst, $03, nAb5, $08, nRst, $0D
	smpsAlterNote       $FF
	dc.b	nFs5, $12, nRst, $04, nFs6, $09, nRst, $02
	smpsAlterNote       $FE
	dc.b	nAb6, $09, nRst, $02, nE6, $09, nRst, $01, nA6, $12, nRst, $04
	dc.b	nAb6, $12, nRst, $04, nE6, $27, nRst, $04
	smpsAlterNote       $FF
	dc.b	nFs6, $1D, nRst, $03
	smpsAlterNote       $FD
	dc.b	nB5, $1D, nRst, $04
	smpsAlterNote       $FE
	dc.b	nCs6, $12, nRst, $04
	smpsSetvoice        $05
	smpsAlterVol        $F3
	smpsPan             panRight, $00
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $07
	smpsAlterVol        $FF
	dc.b	nFs5, $02, nRst, $09
	smpsAlterNote       $00
	dc.b	nB5, $02, nRst, $09, nCs6, $01, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $00
	dc.b	nB5, $02, nRst, $09, nCs6, $02, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $09, nFs5, $01, nRst, $09
	smpsAlterNote       $00
	dc.b	nB5, $02, nRst, $09, nEb6, $02, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $00
	dc.b	nB5, $01, nRst, $09, nCs6, $02, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $00
	dc.b	nB5, $02, nRst, $09, nCs6, $02, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $00
	dc.b	nB5, $01, nRst, $0A, nEb6, $01, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs5, $02
	smpsSetvoice        $08
	smpsAlterVol        $22
	smpsPan             panCenter, $00
	smpsAlterNote       $FF
	dc.b	$12, nRst, $04, nFs5, $12, nRst, $03
	smpsAlterVol        $EC
	dc.b	nFs5, $12, nRst, $04
	smpsAlterNote       $FE
	dc.b	nCs6, $12, nRst, $04
	smpsAlterNote       $FD
	dc.b	nB5, $26, nRst, $05
	smpsAlterNote       $FE
	dc.b	nA5, $09, nRst, $02, nAb5, $09, nRst, $02
	smpsAlterNote       $FF
	dc.b	nFs5, $12, nRst, $04
	smpsAlterNote       $FE
	dc.b	nA5, $12, nRst, $03, nCs6, $12, nRst, $04
	smpsAlterNote       $FD
	dc.b	nB5, $12, nRst, $04
	smpsAlterNote       $FE
	dc.b	nA5, $1C, nRst, $04, nAb5, $09, nRst, $18
	smpsAlterNote       $FF
	dc.b	nFs5, $12, nRst, $03
	smpsAlterNote       $FE
	dc.b	nCs6, $12, nRst, $04
	smpsAlterNote       $FF
	dc.b	nFs6, $12, nRst, $03
	smpsAlterNote       $FE
	dc.b	nAb6, $1D, nRst, $04, nE6, $09, nRst, $02, nCs6, $12, nRst, $04
	smpsAlterNote       $FD
	dc.b	nB5, $1D, nRst, $03
	smpsAlterNote       $FE
	dc.b	nE6, $1D, nRst, $04, nCs6, $09, nRst, $02
	smpsAlterNote       $FD
	dc.b	nB5, $09, nRst, $01
	smpsAlterVol        $02
	smpsAlterNote       $FE
	dc.b	nA5, $08, nRst, $03, nAb5, $07, nRst, $04
	smpsAlterVol        $12
	smpsAlterNote       $FF
	dc.b	nFs5, $12, nRst, $04
	smpsAlterVol        $EC
	dc.b	nFs5, $12, nRst, $03
	smpsAlterNote       $FE
	dc.b	nCs6, $12, nRst, $04
	smpsAlterNote       $FD
	dc.b	nB5, $26, nRst, $06
	smpsAlterNote       $FE
	dc.b	nA5, $09, nRst, $01, nAb5, $09, nRst, $0D
	smpsAlterNote       $FF
	dc.b	nFs5, $12, nRst, $04, nFs6, $09, nRst, $02
	smpsAlterNote       $FE
	dc.b	nAb6, $09, nRst, $01, nE6, $09, nRst, $02, nA6, $12, nRst, $04
	dc.b	nAb6, $12, nRst, $03, nE6, $28, nRst, $04
	smpsAlterNote       $FF
	dc.b	nFs6, $1D, nRst, $03
	smpsAlterNote       $FD
	dc.b	nB5, $1E, nRst, $03
	smpsAlterNote       $FE
	dc.b	nCs6, $12, nRst, $04
	smpsSetvoice        $05
	smpsAlterVol        $F5
	smpsPan             panRight, $00
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $07
	smpsAlterVol        $FF
	dc.b	nFs5, $02, nRst, $09
	smpsAlterNote       $00
	dc.b	nB5, $01, nRst, $09, nCs6, $02, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $00
	dc.b	nB5, $02, nRst, $09, nCs6, $01, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $00
	dc.b	nB5, $02, nRst, $09, nEb6, $02, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $09, nFs5, $01, nRst, $09
	smpsAlterNote       $00
	dc.b	nB5, $02, nRst, $09, nCs6, $02, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $00
	dc.b	nG5, $02, nRst, $09
	smpsSetvoice        $0B
	smpsAlterVol        $0A
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	nFs3, $04, nRst, $01
	smpsAlterNote       $00
	dc.b	nG3, $04, nRst, $02, nBb3, $03, nRst, $02
	smpsAlterNote       $01
	dc.b	nFs4, $04, nRst, $02
	smpsAlterNote       $00
	dc.b	nG4, $03, nRst, $02, nBb4, $04, nRst, $01
	smpsAlterNote       $01
	dc.b	nFs5, $02, nRst, $04
	smpsAlterNote       $00
	dc.b	nG5, $03, nRst, $02, nBb5, $04, nRst, $02
	smpsAlterNote       $01
	dc.b	nFs6, $01, nRst, $02
	smpsAlterNote       $00
	dc.b	nG6, nRst
	smpsSetvoice        $0C
	smpsAlterVol        $FA
	smpsAlterNote       $FD
	dc.b	nE5, $05, nRst, $06
	smpsAlterNote       $FE
	dc.b	nFs5, $05, nRst
	smpsAlterNote       $FD
	dc.b	nG5, $06, nRst, $05
	smpsAlterNote       $FE
	dc.b	nC6, $41, nRst, $0B, nC5, $12, nRst, $04
	smpsSetvoice        $0D
	smpsAlterVol        $FD
	smpsAlterNote       $01
	dc.b	nFs4, $12, nRst, $0F, nFs4, $03, nRst, $07, nFs4, $23, nRst, $09
	dc.b	nFs4, $26, nRst, $05
	smpsSetvoice        $0C
	smpsAlterVol        $03
	smpsAlterNote       $FD
	dc.b	nE5, nRst, $06
	smpsAlterNote       $FE
	dc.b	nFs5, $05, nRst, $06
	smpsAlterNote       $FD
	dc.b	nG5, $05, nRst
	smpsAlterNote       $FE
	dc.b	nC6, $41, nRst, $0C, nC5, $11, nRst, $04
	smpsSetvoice        $0D
	smpsAlterVol        $FD
	smpsAlterNote       $01
	dc.b	nFs4, $12, nRst, $0F, nFs4, $03, nRst, $08, nFs4, $22, nRst, $09
	dc.b	nFs4, $26, nRst, $05
	smpsAlterVol        $06
	dc.b	nFs4, $26, nRst, $05
	smpsSetvoice        $08
	smpsAlterVol        $64
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $A1
	smpsAlterNote       $FF
	dc.b	nFs5, $11, nRst, $04
	smpsAlterNote       $FE
	dc.b	nCs6, $12, nRst, $04
	smpsAlterNote       $FD
	dc.b	nB5, $26, nRst, $05
	smpsPan             panCenter, $00
	smpsJump            Mus_SinkSanct_Jump03

; FM3 Data
Mus_SinkSanct_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $20
	smpsPan             panCenter, $00
	dc.b	nA5, $17, nRst, $08
	smpsAlterNote       $01
	dc.b	nFs5, $18, nRst, $08
	smpsAlterNote       $00
	dc.b	nCs5, $33, nRst, $0E, nEb5, $17, nRst, $09, nB5, $18, nRst, $08
	dc.b	nA5, $18, nRst, $08
	smpsAlterNote       $01
	dc.b	nFs5, $18, nRst, $08
	smpsAlterNote       $00
	dc.b	nCs5, $33, nRst, $0D, nEb5, $18, nRst, $08, nB5, $18, nRst, $08
	dc.b	nA5, $18, nRst, $08
	smpsAlterNote       $01
	dc.b	nFs5, $18, nRst, $08
	smpsAlterNote       $00
	dc.b	nCs5, $18, nRst, $08, nCs5, $1C, nRst, $09, nB4, $4F, nRst, $0D
	smpsSetvoice        $05
	smpsAlterVol        $EE
	smpsAlterNote       $01
	dc.b	nFs5, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nB5, $07, nRst, $04, nCs6, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs5, $07, nRst, $03, nFs5, $08, nRst, $03
	smpsAlterNote       $00
	dc.b	nB5, $07, nRst, $04, nCs6, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs5, $07, nRst, $04, nFs5, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nB5, $07, nRst, $03, nEb6, $08, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs5, $07, nRst, $04, nFs5, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nB5, $07, nRst, $04, nCs6, $07, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs5, $08, nRst, $03, nFs5, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nB5, $07, nRst, $04, nCs6, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs5, $07, nRst, $04, nFs5, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nB5, $07, nRst, $04, nEb6, $07, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs5, $08, nRst, $03
	smpsPan             panRight, $00
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nFs5, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $09
	smpsAlterNote       $FD
	dc.b	nEb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $0A

Mus_SinkSanct_Jump02:
	dc.b	nFs5, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $01, nRst, $0A, nFs5, $01, nRst, $0A
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $0A
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nEb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $01, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nFs5, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nE5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nA6, $02, nRst, $09, nAb6, $01, nRst, $09, nE6, $02, nRst, $0A
	smpsAlterNote       $FE
	dc.b	nFs6, $01, nRst, $0A
	smpsAlterNote       $FD
	dc.b	nAb6, $01, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs7, $02, nRst, $09, nFs6, $01, nRst, $0A, nFs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $02, nRst, $09, nAb6, $01, nRst, $09
	smpsAlterNote       $FE
	dc.b	nD6, $02, nRst, $09, nD6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $01, nRst, $0A
	smpsAlterNote       $FE
	dc.b	nFs5, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nEb6, $01, nRst, $0A
	smpsAlterNote       $FE
	dc.b	nFs5, $01, nRst, $0A, nFs5, $01, nRst, $0A
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nCs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs6, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nE5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB4, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nA6, $01, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $02, nRst, $09, nE6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs6, $02, nRst, $09, nD6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nE6, $01, nRst, $0A
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $0A
	smpsAlterNote       $FD
	dc.b	nE6, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nE6, $02, nRst, $09, nE5, $02, nRst, $09
	smpsPan             panCenter, $00
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $01, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nEb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $0A, nFs5, $01, nRst, $0A, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $09
	smpsAlterNote       $FD
	dc.b	nEb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09
	smpsPan             panRight, $00
	dc.b	nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nFs5, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nEb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $0A
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $0A, nFs5, $01, nRst, $0A, nFs5, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $09
	smpsAlterNote       $FD
	dc.b	nEb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $01, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nE5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $09
	smpsAlterNote       $FD
	dc.b	nA6, $02, nRst, $0A, nAb6, $01, nRst, $0A, nE6, $01, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs7, $02, nRst, $09, nFs6, $02, nRst, $09, nFs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $01, nRst, $09, nAb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nD6, $02, nRst, $09, nD6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $01, nRst, $0A, nFs5, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $0A
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $0A
	smpsAlterNote       $FD
	dc.b	nEb6, $01, nRst, $0A
	smpsAlterNote       $FE
	dc.b	nFs5, $01, nRst, $0A, nFs5, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nCs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $01, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs6, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nE5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB4, $01, nRst, $09
	smpsAlterNote       $FD
	dc.b	nA6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs6, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nAb6, $02, nRst, $09, nE6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs6, $01, nRst, $0A, nD6, $01, nRst, $09
	smpsAlterNote       $FD
	dc.b	nE6, $02, nRst, $0A
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $09
	smpsAlterNote       $FD
	dc.b	nE6, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nE6, $02, nRst, $09, nE5, $02, nRst, $09
	smpsPan             panCenter, $00
	smpsAlterNote       $FE
	dc.b	nFs5, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nEb6, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $01, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $02, nRst, $09, nFs5, $02, nRst, $09
	smpsAlterNote       $FD
	dc.b	nG5, $01, nRst, $0A
	smpsSetvoice        $0B
	smpsAlterVol        $0B
	smpsAlterNote       $FE
	dc.b	nFs3, $03, nRst, $02
	smpsAlterNote       $FD
	dc.b	nG3, $04, nRst, $02, nBb3, $03, nRst, $02
	smpsAlterNote       $FE
	dc.b	nFs4, $04, nRst, $01
	smpsAlterNote       $FD
	dc.b	nG4, $04, nRst, $02, nBb4, $03, nRst, $02
	smpsAlterNote       $FE
	dc.b	nFs5, $04, nRst, $02
	smpsAlterNote       $FD
	dc.b	nG5, $03, nRst, $02, nBb5, $04, nRst, $02
	smpsAlterNote       $FE
	dc.b	nFs6, $03, nRst, $02
	smpsAlterNote       $FD
	dc.b	nG6, $04, nRst, $01, nBb6, $04, nRst, $02
	smpsSetvoice        $0C
	smpsAlterVol        $07
	dc.b	nB6, $0C, nRst, $09, nB6, $06, nRst, $05
	smpsAlterNote       $FE
	dc.b	nA6, $04, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nB6, $03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nA6, $02, nRst, nG6, $45, nRst, $07
	smpsAlterNote       $FF
	dc.b	nFs6, $09, nRst, $02
	smpsSetvoice        $0D
	smpsAlterVol        $F7
	smpsAlterNote       $00
	dc.b	nBb4, $12, nRst, $0F, nBb4, $03, nRst, $07, nBb4, $23, nRst, $09
	dc.b	nBb4, $25, nRst, $06
	smpsSetvoice        $0C
	smpsAlterVol        $09
	smpsAlterNote       $FD
	dc.b	nB6, $0C, nRst, $09, nB6, $06, nRst, $05
	smpsAlterNote       $FE
	dc.b	nA6, $04, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	nB6, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	nA6, $01, nRst, $02, nG6, $45, nRst, $07
	smpsAlterNote       $FF
	dc.b	nFs6, $09, nRst, $02
	smpsSetvoice        $0D
	smpsAlterVol        $F7
	smpsAlterNote       $00
	dc.b	nBb4, $12, nRst, $0F, nBb4, $03, nRst, $07, nBb4, $23, nRst, $09
	dc.b	nBb4, $26, nRst, $05
	smpsSetvoice        $05
	smpsAlterVol        $F7
	smpsPan             panRight, $00
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $01, nRst, $09, nFs5, $02, nRst, $0A, nFs5, $01, nRst, $09
	smpsAlterNote       $FC
	dc.b	nB5, $02, nRst, $09
	smpsAlterNote       $FE
	dc.b	nCs6, $02, nRst, $09, nFs5, $01, nRst, $0A, nFs5, $01, nRst, $0A
	smpsAlterNote       $FC
	dc.b	nB5, $01, nRst, $0A
	smpsAlterNote       $FD
	dc.b	nEb6, $01, nRst, $09
	smpsAlterNote       $FE
	dc.b	nFs5, $02, nRst, $09
	smpsPan             panRight, $00
	smpsAlterNote       $FE
	smpsJump            Mus_SinkSanct_Jump02

; FM4 Data
Mus_SinkSanct_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $22
	smpsPan             panCenter, $00
	dc.b	nCs4, $17, nRst, $08, nCs4, $18, nRst, $08, nCs4, $38, nRst, $09
	smpsAlterNote       $01
	dc.b	nFs4, $31, nRst, $0F
	smpsAlterNote       $00
	dc.b	nCs4, $18, nRst, $08, nCs4, $18, nRst, $08, nCs4, $38, nRst, $08
	smpsAlterNote       $01
	dc.b	nFs4, $31, nRst, $0F, nFs4, $18, nRst, $08, nFs4, $18, nRst, $08
	smpsAlterNote       $00
	dc.b	nA4, $18, nRst, $08, nA4, $1C, nRst, $09, nAb4, $55, nRst, $07
	smpsSetvoice        $05
	smpsAlterVol        $EF
	smpsPan             panRight, $00
	smpsAlterNote       $FC
	dc.b	nB5, $06, nRst, $01, nB5, $08, nRst, $03
	smpsAlterNote       $FE
	dc.b	nFs5, $07, nRst, $04
	smpsAlterNote       $FC
	dc.b	nB5, $07, nRst, $04
	smpsAlterNote       $FE
	dc.b	nCs6, $07, nRst, $04, nFs5, $07, nRst, $03, nFs5, $08, nRst, $03
	smpsAlterNote       $FC
	dc.b	nB5, $08, nRst, $03
	smpsAlterNote       $FE
	dc.b	nCs6, $07, nRst, $04, nFs5, $07, nRst, $04, nFs5, $07, nRst, $04
	smpsAlterNote       $FC
	dc.b	nB5, $07, nRst, $03
	smpsAlterNote       $FD
	dc.b	nEb6, $08, nRst, $03
	smpsAlterNote       $FE
	dc.b	nFs5, $07, nRst, $04, nFs5, $07, nRst, $04
	smpsAlterNote       $FC
	dc.b	nB5, $07, nRst, $04
	smpsAlterNote       $FE
	dc.b	nCs6, $07, nRst, $03, nFs5, $08, nRst, $04, nFs5, $07, nRst, $04
	smpsAlterNote       $FC
	dc.b	nB5, $07, nRst, $03
	smpsAlterNote       $FE
	dc.b	nCs6, $08, nRst, $03, nFs5, $07, nRst, $04, nFs5, $07, nRst, $04
	smpsAlterNote       $FC
	dc.b	nB5, $07, nRst, $04
	smpsAlterNote       $FD
	dc.b	nEb6, $01, nRst, $02
	smpsSetvoice        $07
	smpsAlterVol        $07
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nCs5, $3A, nRst, $07, nEb5, $3A, nRst, $08

Mus_SinkSanct_Jump01:
	dc.b	nCs5, $39, nRst, $08, nEb5, $39, nRst, $07, nCs5, $7B, nRst, $08
	smpsAlterNote       $01
	dc.b	nFs5, $51, nRst, $05
	smpsAlterNote       $00
	dc.b	nAb5, $21, nRst, $0B, nCs5, $39, nRst, $08, nEb5, $39, nRst, $08
	dc.b	nCs5, $46, nRst, $06, nCs5, $12, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs5, $09, nRst, $02
	smpsAlterNote       $00
	dc.b	nAb5, $09, nRst, $02, nE5, $09, nRst, $02, nA5, $12, nRst, $03
	dc.b	nAb5, $1D, nRst, $04, nE5, $1B, nRst, $06, nAb4, $0F, nRst, $06
	dc.b	nCs5, $11, nRst, $05, nCs5, $26, nRst, $05, nCs6, $12, nRst, $04
	dc.b	nB5, $51, nRst, $06, nA5, $07, nRst, $04, nAb5, $06, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs5, $50, nRst, $07
	smpsAlterNote       $00

Mus_SinkSanct_Loop00:
	dc.b	nCs5, $3A, nRst, $07, nEb5, $3A, nRst, $07
	smpsLoop            $00, $02, Mus_SinkSanct_Loop00
	dc.b	nCs5, $7B, nRst, $07
	smpsAlterNote       $01
	dc.b	nFs5, $52, nRst, $05
	smpsAlterNote       $00
	dc.b	nAb5, $20, nRst, $0C, nCs5, $39, nRst, $08, nEb5, $39, nRst, $08
	dc.b	nCs5, $39, nRst, $12, nCs5, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs5, $09, nRst, $02
	smpsAlterNote       $00
	dc.b	nAb5, $09, nRst, $02, nE5, $09, nRst, $01, nA5, $12, nRst, $04
	dc.b	nAb5, $1D, nRst, $04, nE5, $1A, nRst, $06, nAb4, $11, nRst, $05
	dc.b	nCs5, $10, nRst, $06
	smpsAlterNote       $01
	dc.b	nFs5, $07, nRst, $03
	smpsAlterVol        $0F
	dc.b	nFs5, $08, nRst, $03
	smpsAlterVol        $F1
	smpsAlterNote       $00
	dc.b	nA5, $11, nRst, $05, nCs6, $10, nRst, $06, nB5, $57, smpsNoAttack, nA5
	dc.b	$06, nRst, $04, nAb5, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs5, $50, nRst, $07
	smpsSetvoice        $0C
	smpsAlterVol        $05
	smpsPan             panCenter, $00
	smpsAlterNote       $FF
	dc.b	nE5, $0B, nRst, $03, nE5, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nFs5, $07, nRst, $04
	smpsAlterNote       $FF
	dc.b	nG5, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nC6, $41, nRst, $0A, nC5, $06, nRst, $02
	smpsSetvoice        $0D
	smpsAlterVol        $F9
	dc.b	nCs5, $12, nRst, $0F, nCs5, $03, nRst, $07, nCs5, $23, nRst, $09
	dc.b	nCs5, $25, nRst, $06
	smpsSetvoice        $0C
	smpsAlterVol        $07
	smpsAlterNote       $FF
	dc.b	nE5, $0B, nRst, $03, nE5, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nFs5, $07, nRst, $04
	smpsAlterNote       $FF
	dc.b	nG5, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nC6, $41, nRst, $0B, nC5, $05, nRst, $02
	smpsSetvoice        $0D
	smpsAlterVol        $62
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $97
	dc.b	nCs5, $11, nRst, $0F, nCs5, $03, nRst, $07, nCs5, $23, nRst, $09
	dc.b	nCs5, $26, nRst, $05
	smpsSetvoice        $07
	smpsAlterVol        $02
	smpsPan             panLeft, $00
	dc.b	nCs5, $3A, nRst, $07, nEb5, $3A, nRst, $07
	smpsPan             panLeft, $00
	smpsJump            Mus_SinkSanct_Jump01

; FM5 Data
Mus_SinkSanct_FM5:
	smpsSetvoice        $03
	smpsAlterVol        $12
	smpsPan             panCenter, $00
	smpsAlterNote       $01
	dc.b	nFs2, $17, nRst, $08
	smpsAlterNote       $00
	dc.b	nAb2, $18, nRst, $09, nA2, $37, nRst, $09, nB2, $31, nRst, $0F
	smpsAlterNote       $01
	dc.b	nFs2, $18, nRst, $08
	smpsAlterNote       $00
	dc.b	nAb2, $18, nRst, $08, nA2, $38, nRst, $08, nB2, $32, nRst, $0E
	dc.b	nA2, $18, nRst, $08, nB2, $18, nRst, $08, nCs3, $3C, nRst, $09
	dc.b	nCs2, $4F, nRst, $0E
	smpsAlterNote       $01
	dc.b	nFs2, $11, nRst, $04, nFs3, $1D, nRst, $03, nFs2, $07, nRst, $04
	dc.b	nFs2, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $04, nB2, $07, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs2, $12, nRst, $04, nFs2, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs3, $1C, nRst, $05, nE3, $07, nRst, $03, nE3, $08, nRst, $03
	dc.b	nEb3, $12, nRst, $04, nB2, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $12, nRst, $03, nFs2, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs3, $1D, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs2, $08, nRst, $04, nFs2, $06, nRst, $04
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $03, nFs2, $12, nRst, $05

Mus_SinkSanct_Jump00:
	dc.b	nFs2, $11, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs3, $1D, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $04, nFs2, $07, nRst, $03
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $04, nFs2, $12, nRst, $03, nFs2, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs3, $1D, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs2, $08, nRst, $04
	smpsAlterNote       $00
	dc.b	nE2, $11, nRst, $04, nCs3, $12, nRst, $04, nE2, $12, nRst, $04
	dc.b	nEb2, $11, nRst, $04, nCs3, $1D, nRst, $04, nEb2, $09, nRst, $02
	dc.b	nD2, $12, nRst, $03, nCs2, $12, nRst, $04, nCs3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $12, nRst, $03
	smpsAlterNote       $00
	dc.b	nCs3, $1D, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $04, nFs2, $07, nRst, $03
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $04, nFs2, $12, nRst, $04, nFs2, $09, nRst, $02
	smpsAlterNote       $00
	dc.b	nCs3, $12, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs3, $07, nRst, $04, nFs3, $07, nRst, $04, nFs2, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nE2, $07, nRst, $04, nE3, $12, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs3, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nE2, $12, nRst, $04, nEb2, $12, nRst, $04, nB2, $1C, nRst, $04
	dc.b	nEb2, $07, nRst, $04, nD2, $12, nRst, $04, nCs2, $12, nRst, $03
	dc.b	nCs3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs3, $1C, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $04, nFs2, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $03, nB2, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $12, nRst, $04, nFs2, $10, nRst, $06
	smpsAlterNote       $00
	dc.b	nCs3, $1D, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs2, $08, nRst, $03, nFs2, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $03, nFs2, $12, nRst, $05, nFs2, $11, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs3, $1D, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $04, nFs2, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs2, $08, nRst, $04, nFs2, $11, nRst, $04, nFs2, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs3, $1D, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs2, $08, nRst, $03, nFs2, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $03, nFs2, $13, nRst, $03, nFs2, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs3, $1D, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $05
	smpsAlterNote       $00
	dc.b	nE2, $11, nRst, $04, nCs3, $12, nRst, $04, nE2, $11, nRst, $04
	dc.b	nEb2, $12, nRst, $04, nCs3, $1D, nRst, $04, nEb2, $09, nRst, $01
	dc.b	nD2, $12, nRst, $04, nCs2, $12, nRst, $04, nCs3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $11, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs3, $1D, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs2, $08, nRst, $04, nFs2, $06, nRst, $04
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $04, nFs2, $12, nRst, $04, nFs2, $09, nRst, $01
	smpsAlterNote       $00
	dc.b	nCs3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs3, $07, nRst, $04, nFs3, $07, nRst, $04, nFs2, $07, nRst, $03
	smpsAlterNote       $00
	dc.b	nE2, $08, nRst, $03, nE3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs3, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nE2, $12, nRst, $04, nEb2, $11, nRst, $04, nB2, $1D, nRst, $04
	dc.b	nEb2, $07, nRst, $04, nD2, $12, nRst, $03, nCs2, $12, nRst, $04
	dc.b	nCs3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $12, nRst, $03
	smpsAlterNote       $00
	dc.b	nCs3, $1D, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $04, nFs2, $07, nRst, $03
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $04, nB2, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $12, nRst, $04, nFs2, $10, nRst, $06
	smpsAlterNote       $00
	dc.b	nCs3, $1C, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $04, nFs2, $07, nRst, $04, nFs3, $12, nRst, $03
	dc.b	nFs2, $08, nRst, $03, nFs2, $12, nRst, $04, nFs2, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nG3, $12, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs3, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nC4, $07, nRst, $04, nB3, $07, nRst, $04, nD4, $07, nRst, $03
	dc.b	nC4, $04, smpsNoAttack, nD4, smpsNoAttack, nC4, $01, nRst, $02, nB3, $07, nRst
	dc.b	$05, nG3, $06, nRst, $04, nD3, $07, nRst, $04, nG2, $07, nRst
	dc.b	$05
	smpsAlterNote       $01
	dc.b	nFs2, $06, nRst, $04
	smpsAlterNote       $00
	dc.b	nG2, $07, nRst, $04, nC3, $07, nRst, $04, nB2, $07, nRst, $03
	dc.b	nD3, $08, nRst, $03, nCs3, $07, nRst, $04, nG3, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs3, $03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $04, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nFs3, $02, nRst
	smpsAlterNote       $00
	dc.b	nC3, $07, nRst, $03, nB2, $08, nRst, $03, nG3, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs3, $07, nRst, $04, nFs2, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nG3, $12, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs3, $08, nRst, $03
	smpsAlterNote       $00
	dc.b	nC4, $07, nRst, $04, nB3, $07, nRst, $04, nD4, $07, nRst, $04
	dc.b	nC4, $03, smpsNoAttack, nD4, $04, smpsNoAttack, nC4, $02, nRst, nB3, $07, nRst
	dc.b	$04, nG3, $06, nRst, $05, nD3, $06, nRst, $04, nG2, $08, nRst
	dc.b	$04
	smpsAlterNote       $01
	dc.b	nFs2, $06, nRst, $04
	smpsAlterNote       $00
	dc.b	nG2, $07, nRst, $04, nC3, $07, nRst, $04, nB2, $07, nRst, $03
	dc.b	nD3, $08, nRst, $03, nCs3, $07, nRst, $04, nG3, $07, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs3, $03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $04, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nFs3, $02, nRst
	smpsAlterNote       $00
	dc.b	nC3, $07, nRst, $04, nB2, $07, nRst, $03, nG3, $08, nRst, $03
	smpsAlterNote       $01
	dc.b	nFs3, $07, nRst, $04, nFs2, $12, nRst, $04
	smpsAlterNote       $00
	dc.b	nCs3, $1C, nRst, $05
	smpsAlterNote       $01
	dc.b	nFs2, $06, nRst, $04, nFs2, $07, nRst, $04
	smpsAlterNote       $00
	dc.b	nEb3, $12, nRst, $04
	smpsAlterNote       $01
	dc.b	nFs2, $07, nRst, $04, nFs2, $12, nRst, $03
	smpsPan             panCenter, $00
	smpsJump            Mus_SinkSanct_Jump00

Mus_SinkSanct_Voices:
;	Voice $00
;	$04
;	$70, $01, $34, $31, 	$12, $12, $52, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$06, $07, $06, $07, 	$23, $00, $24, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $00, $07
	smpsVcCoarseFreq    $01, $04, $01, $00
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $06, $07, $06
	smpsVcTotalLevel    $00, $24, $00, $23

;	Voice $01
;	$2C
;	$72, $01, $33, $32, 	$12, $12, $52, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$06, $05, $06, $05, 	$23, $00, $24, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $00, $07
	smpsVcCoarseFreq    $02, $03, $01, $02
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $05, $06, $05, $06
	smpsVcTotalLevel    $00, $24, $00, $23

;	Voice $02
;	$2C
;	$72, $01, $33, $30, 	$12, $12, $52, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$06, $05, $06, $05, 	$23, $00, $24, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $00, $07
	smpsVcCoarseFreq    $00, $03, $01, $02
	smpsVcRateScale     $00, $01, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $05, $06, $05, $06
	smpsVcTotalLevel    $00, $24, $00, $23

;	Voice $03
;	$1A
;	$37, $30, $30, $30, 	$9E, $DE, $1E, $9E, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$26, $37, $36, $26, 	$2B, $20, $14, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $00, $00, $00, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1E, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $03, $02
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $00, $14, $20, $2B

;	Voice $04
;	$3D
;	$71, $31, $70, $31, 	$10, $15, $15, $15, 	$0A, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1D, $00, $03, $03
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $03, $07
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $15, $15, $15, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $03, $03, $00, $1D

;	Voice $05
;	$10
;	$74, $01, $01, $32, 	$DD, $DD, $DC, $DA, 	$06, $05, $05, $0A
;	$03, $03, $03, $03, 	$00, $00, $00, $21, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $07
	smpsVcCoarseFreq    $02, $01, $01, $04
	smpsVcRateScale     $03, $03, $03, $03
	smpsVcAttackRate    $1A, $1C, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $05, $05, $06
	smpsVcDecayRate2    $03, $03, $03, $03
	smpsVcDecayLevel    $02, $00, $00, $00
	smpsVcReleaseRate   $01, $00, $00, $00
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $06
;	$35
;	$11, $14, $19, $10, 	$5D, $50, $5C, $50, 	$1F, $1F, $1F, $1F
;	$01, $07, $00, $00, 	$46, $07, $07, $07, 	$05, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $01, $01
	smpsVcCoarseFreq    $00, $09, $04, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $10, $1C, $10, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $1F
	smpsVcDecayRate2    $00, $00, $07, $01
	smpsVcDecayLevel    $00, $00, $00, $04
	smpsVcReleaseRate   $07, $07, $07, $06
	smpsVcTotalLevel    $00, $00, $00, $05

;	Voice $07
;	$38
;	$6A, $0A, $11, $02, 	$14, $14, $0F, $0F, 	$05, $08, $02, $08
;	$00, $00, $00, $00, 	$A6, $16, $16, $17, 	$1C, $2D, $28, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $06
	smpsVcCoarseFreq    $02, $01, $0A, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $0F, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $02, $08, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $0A
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $00, $28, $2D, $1C

;	Voice $08
;	$04
;	$71, $01, $32, $30, 	$12, $12, $12, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$06, $07, $06, $07, 	$23, $00, $23, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $00, $07
	smpsVcCoarseFreq    $00, $02, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $06, $07, $06
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $09
;	$3D
;	$00, $01, $32, $30, 	$0B, $10, $12, $12, 	$08, $00, $00, $00
;	$00, $00, $00, $00, 	$20, $07, $06, $07, 	$17, $7F, $0D, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $00, $00
	smpsVcCoarseFreq    $00, $02, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $10, $0B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $02
	smpsVcReleaseRate   $07, $06, $07, $00
	smpsVcTotalLevel    $00, $0D, $7F, $17

;	Voice $0A
;	$3D
;	$00, $01, $01, $01, 	$0B, $10, $10, $10, 	$08, $00, $00, $00
;	$00, $00, $00, $00, 	$20, $06, $06, $06, 	$17, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $10, $10, $0B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $02
	smpsVcReleaseRate   $06, $06, $06, $00
	smpsVcTotalLevel    $00, $00, $00, $17

;	Voice $0B
;	$3E
;	$01, $01, $01, $01, 	$9F, $5F, $9F, $9F, 	$0E, $0B, $0C, $09
;	$00, $00, $00, $00, 	$F2, $F5, $F5, $F5, 	$16, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $02, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0C, $0B, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $05, $05, $05, $02
	smpsVcTotalLevel    $00, $00, $00, $16

;	Voice $0C
;	$3D
;	$01, $03, $00, $01, 	$1F, $0E, $0E, $0E, 	$07, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$13, $06, $06, $06, 	$22, $06, $00, $06
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $0E, $0E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $06, $06, $06, $03
	smpsVcTotalLevel    $06, $00, $06, $22

;	Voice $0D
;	$3D
;	$01, $01, $01, $01, 	$15, $1D, $1D, $1D, 	$09, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$65, $05, $05, $05, 	$1A, $19, $1A, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1D, $1D, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $06
	smpsVcReleaseRate   $05, $05, $05, $05
	smpsVcTotalLevel    $00, $1A, $19, $1A

;	Voice $0E
;	$3E
;	$01, $01, $01, $01, 	$9F, $5F, $9F, $9F, 	$0E, $0B, $0C, $09
;	$00, $00, $00, $00, 	$F2, $F5, $F5, $06, 	$16, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $02, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0C, $0B, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $0F, $0F, $0F
	smpsVcReleaseRate   $06, $05, $05, $02
	smpsVcTotalLevel    $00, $00, $00, $16

