Snd_ICZ1_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Snd_ICZ1_Voices
	smpsHeaderChan      $06, $02
	smpsHeaderTempo     $02, $06

	smpsHeaderDAC       Snd_ICZ1_DAC
	smpsHeaderFM        Snd_ICZ1_FM1,	$00, $0E
	smpsHeaderFM        Snd_ICZ1_FM2,	$00, $0E
	smpsHeaderFM        Snd_ICZ1_FM3,	$00, $0E
	smpsHeaderFM        Snd_ICZ1_FM4,	$00, $0E
	smpsHeaderFM        Snd_ICZ1_FM5,	$00, $0E
	smpsHeaderPSG       Snd_ICZ1_PSG1,	$00, $02, $00, $00
	smpsHeaderPSG       Snd_ICZ1_PSG2,	$00, $02, $00, $00

; DAC Data
Snd_ICZ1_DAC:
	dc.b	dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04
	dc.b	dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08
	dc.b	dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04
	dc.b	dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08
	dc.b	dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08
	dc.b	dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04
	dc.b	dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08

Snd_ICZ1_Jump00:
	dc.b	dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04
	dc.b	dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08
	dc.b	dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04
	dc.b	dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08
	dc.b	dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08
	dc.b	dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04
	dc.b	dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08
	dc.b	dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04
	dc.b	dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08
	dc.b	dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08
	dc.b	dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04
	dc.b	dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08
	dc.b	dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04
	dc.b	dLowTomS3, $04, dElectricLowTom, $04, dRideCymbal, $04, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08
	dc.b	dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08
	dc.b	dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08
	dc.b	dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08
	dc.b	dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08
	dc.b	dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08
	dc.b	dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08
	dc.b	dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08
	dc.b	dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08
	dc.b	dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08
	dc.b	dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08
	dc.b	dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08
	dc.b	dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08
	dc.b	dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08
	dc.b	dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08
	dc.b	dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08
	dc.b	dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $04
	dc.b	dCrashCymbal, $04, dLowTomS3, $08, dCrashCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04
	dc.b	dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $04, dCrashCymbal, $04
	dc.b	dLowTomS3, $08, dCrashCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08
	dc.b	dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08
	dc.b	dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08
	dc.b	dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08, dHighMetalHit, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dMidTomS3, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08, dLowTomS3, $08, dElectricFloorTom, $08
	dc.b	dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04, dElectricLowTom, $08, dElectricLowTom, $08
	dc.b	dHighMetalHit, $08, dElectricFloorTom, $08, dLowTomS3, $08, dRideCymbal, $08, dHighMetalHit, $04, dElectricFloorTom, $04
	dc.b	dMidTomS3, $04, dLowTomS3, $04, dElectricLowTom, $08, dLowTomS3, $08, dElectricLowTom, $08, dElectricFloorTom, $08
	dc.b	dLowTomS3, $08, dElectricFloorTom, $08, dHighMetalHit, $04, dElectricFloorTom, $04, dElectricFloorTom, $04, dLowTomS3, $04
	dc.b	dElectricLowTom, $04, dRideCymbal, $04
	smpsJump            Snd_ICZ1_Jump00

; FM1 Data
Snd_ICZ1_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $7F, nRst, $7F, nRst, $02

Snd_ICZ1_Jump05:
	dc.b	nD4, $10, nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C
	dc.b	nB3, $0C, nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C
	dc.b	nFs4, $0C, nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10
	dc.b	nD4, $10, nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C
	dc.b	nB3, $0C, nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C
	dc.b	nFs4, $0C, nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10
	dc.b	nD4, $10, nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C
	dc.b	nB3, $0C, nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C
	dc.b	nFs4, $0C, nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10
	dc.b	nD4, $10, nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C
	dc.b	nB3, $0C, nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C
	dc.b	nFs4, $0C, nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10
	dc.b	nD4, $10, nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C
	dc.b	nB3, $0C, nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C
	dc.b	nFs4, $0C, nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10
	dc.b	nD4, $10, nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C
	dc.b	nB3, $0C, nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C
	dc.b	nFs4, $0C, nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10
	dc.b	nD4, $10, nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C
	dc.b	nB3, $0C, nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C
	dc.b	nFs4, $0C, nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10
	dc.b	nD4, $10, nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C
	dc.b	nB3, $0C, nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C
	dc.b	nFs4, $0C, nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10
	dc.b	nA4, $04, nB4, $04, nB4, $04, nA4, $04, nB4, $08, nB4, $04
	dc.b	nA4, $04, nRst, $04, nB4, $04, nB4, $04, nA4, $04, nB4, $08
	dc.b	nB4, $04, nRst, $04, nA4, $04, nB4, $04, nB4, $04, nA4, $04
	dc.b	nB4, $08, nB4, $04, nA4, $04, nRst, $04, nB4, $04, nB4, $04
	dc.b	nA4, $04, nB4, $08, nB4, $04, nRst, $04, nA4, $04, nB4, $04
	dc.b	nB4, $04, nA4, $04, nB4, $08, nB4, $04, nA4, $04, nRst, $04
	dc.b	nB4, $04, nB4, $04, nA4, $04, nB4, $08, nB4, $04, nRst, $04
	dc.b	nA4, $0C, nA4, $0C, nA4, $18, nBb4, $10, nCs5, $04, nD5, $08
	dc.b	nCs5, $04, nD5, $08, nD5, $04, nCs5, $04, nRst, $04, nD5, $08
	dc.b	nCs5, $04, nD5, $08, nD5, $08, nCs5, $04, nD5, $08, nCs5, $04
	dc.b	nD5, $08, nD5, $04, nCs5, $04, nRst, $04, nD5, $08, nCs5, $04
	dc.b	nD5, $08, nD5, $08, nCs5, $04, nD5, $08, nCs5, $04, nD5, $08
	dc.b	nD5, $04, nCs5, $04, nRst, $04, nD5, $08, nCs5, $04, nD5, $08
	dc.b	nD5, $08, nCs5, $0C, nD5, $0C, nCs5, $18, nD5, $10, nD4, $10
	dc.b	nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C, nB3, $0C
	dc.b	nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C, nFs4, $0C
	dc.b	nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10, nD4, $10
	dc.b	nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C, nB3, $0C
	dc.b	nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C, nFs4, $0C
	dc.b	nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10, nD4, $10
	dc.b	nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C, nB3, $0C
	dc.b	nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C, nFs4, $0C
	dc.b	nCs4, $10, nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10, nD4, $10
	dc.b	nD4, $10, nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C, nB3, $0C
	dc.b	nB3, $10, nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C, nFs4, $0C
	dc.b	nCs4, $10, nFs4, $08, nRst, $04, nFs4, $08, nRst, $04, nFs4, $08
	dc.b	nRst, $08, nFs4, $08, nRst, $10, nFs4, $04, nRst, $08, nFs4, $04
	dc.b	nRst, $08, nFs4, $04, nRst, $0C, nFs4, $04, nRst, $14, nCs5, $08
	dc.b	nRst, $04, nCs5, $08, nRst, $04, nCs5, $08, nRst, $04, nCs5, $08
	dc.b	nRst, $04, nCs5, $08, nCs5, $04, nD5, $08, nCs5, $04, nD5, $08
	dc.b	nD5, $04, nCs5, $04, nRst, $04, nD5, $08, nCs5, $04, nD5, $08
	dc.b	nD5, $08, nCs5, $04, nD5, $08, nCs5, $04, nD5, $08, nD5, $04
	dc.b	nCs5, $04, nRst, $04, nD5, $08, nCs5, $04, nD5, $08, nD5, $08
	dc.b	nCs5, $04, nD5, $08, nCs5, $04, nD5, $08, nD5, $04, nCs5, $04
	dc.b	nRst, $04, nD5, $08, nCs5, $04, nD5, $08, nD5, $08, nCs5, $0C
	dc.b	nD5, $0C, nCs5, $18, nD5, $10, nCs5, $04, nD5, $08, nCs5, $04
	dc.b	nD5, $08, nD5, $04, nCs5, $04, nRst, $04, nD5, $08, nCs5, $04
	dc.b	nD5, $08, nD5, $08, nCs5, $04, nD5, $08, nCs5, $04, nD5, $08
	dc.b	nD5, $04, nCs5, $04, nRst, $04, nD5, $08, nCs5, $04, nD5, $08
	dc.b	nD5, $08, nCs5, $04, nD5, $08, nCs5, $04, nD5, $08, nD5, $04
	dc.b	nCs5, $04, nRst, $04, nD5, $08, nCs5, $04, nD5, $08, nD5, $08
	dc.b	nCs5, $0C, nD5, $0C, nCs5, $18, nD5, $10, nD4, $10, nD4, $10
	dc.b	nCs4, $0C, nCs4, $0C, nB3, $10, nB3, $0C, nB3, $0C, nB3, $10
	dc.b	nCs4, $10, nD4, $10, nD4, $10, nFs4, $0C, nFs4, $0C, nCs4, $10
	dc.b	nCs4, $0C, nCs4, $0C, nCs4, $10, nD4, $10
	smpsJump            Snd_ICZ1_Jump05

; FM2 Data
Snd_ICZ1_FM2:
	smpsSetvoice        $01
	dc.b	nFs4, $20, nE4, $20, nD4, $30, nE4, $10, nFs4, $20, nA4, $20
	dc.b	nE4, $30, nFs4, $10

Snd_ICZ1_Jump04:
	dc.b	nFs4, $20, nE4, $20, nD4, $30, nE4, $10, nFs4, $20, nA4, $20
	dc.b	nE4, $30, nFs4, $10, nFs4, $20, nE4, $20, nD4, $30, nE4, $10
	dc.b	nFs4, $20, nA4, $20, nE4, $30, nFs4, $10, nFs4, $20, nE4, $20
	dc.b	nD4, $30, nE4, $10, nFs4, $20, nA4, $20, nE4, $30, nFs4, $10
	dc.b	nFs4, $20, nE4, $20, nD4, $30, nE4, $10, nFs4, $20, nA4, $20
	dc.b	nE4, $30, nFs4, $10, nFs4, $20, nE4, $20, nD4, $30, nE4, $10
	dc.b	nFs4, $20, nA4, $20, nE4, $30, nFs4, $10, nFs4, $20, nE4, $20
	dc.b	nD4, $30, nE4, $10, nFs4, $20, nA4, $20, nE4, $30, nFs4, $10
	dc.b	nFs4, $20, nE4, $20, nD4, $30, nE4, $10, nFs4, $20, nA4, $20
	dc.b	nE4, $30, nFs4, $10, nFs4, $20, nE4, $20, nD4, $30, nE4, $10
	dc.b	nFs4, $20, nA4, $20, nE4, $30, nFs4, $10, nFs4, $20, nE4, $20
	dc.b	nD4, $30, nE4, $10, nFs4, $20, nA4, $20, nE4, $30, nFs4, $10
	dc.b	nFs4, $20, nE4, $20, nD4, $30, nE4, $10, nFs4, $20, nA4, $20
	dc.b	nE4, $30, nFs4, $10, nFs4, $20, nE4, $20, nD4, $30, nE4, $10
	dc.b	nFs4, $20, nA4, $20, nE4, $30, nFs4, $10, nFs4, $20, nE4, $20
	dc.b	nD4, $30, nE4, $10, nFs4, $20, nA4, $20, nE4, $30, nFs4, $10
	dc.b	nFs4, $20, nE4, $20, nD4, $30, nE4, $10, nFs4, $20, nA4, $20
	dc.b	nE4, $30, nFs4, $10, nFs4, $20, nE4, $20, nD4, $30, nE4, $10
	dc.b	nFs4, $20, nA4, $20, nE4, $30, nE4, $10, nFs4, $08, nFs4, $04
	dc.b	nRst, $08, nFs4, $04, nRst, $08, nFs4, $04, nRst, $0C, nFs4, $04
	dc.b	nRst, $14, nCs5, $08, nRst, $04, nCs5, $08, nRst, $04, nCs5, $08
	dc.b	nRst, $04, nCs5, $08, nRst, $04, nCs5, $08, nB5, $10, nFs4, $10
	dc.b	nE4, $20, nD4, $30, nE4, $10, nFs4, $20, nA4, $20, nE4, $30
	dc.b	nFs4, $10, nFs4, $20, nE4, $20, nD4, $30, nE4, $10, nFs4, $20
	dc.b	nA4, $20, nE4, $30, nFs4, $10, nFs4, $20, nE4, $20, nD4, $30
	dc.b	nE4, $10, nFs4, $20, nA4, $20, nE4, $30, nFs4, $10
	smpsJump            Snd_ICZ1_Jump04

; FM3 Data
Snd_ICZ1_FM3:
	smpsSetvoice        $02
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04

Snd_ICZ1_Jump03:
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nA2, $04, nRst, $04, nA2, $04, nRst, $0C, nA2, $04, nA2, $04
	dc.b	nG2, $04, nRst, $04, nG2, $04, nRst, $0C, nG2, $04, nG2, $04
	dc.b	nFs2, $04, nRst, $04, nFs2, $04, nRst, $0C, nFs2, $04, nFs2, $04
	dc.b	nB2, $04, nRst, $04, nB2, $04, nRst, $0C, nB2, $04, nB2, $04
	dc.b	nD3, $04, nRst, $04, nD3, $04, nRst, $0C, nD3, $04, nD3, $04
	dc.b	nRst, $08, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08
	dc.b	nRst, $08, nFs2, $08, nRst, $10, nFs2, $04, nRst, $08, nFs2, $04
	dc.b	nRst, $08, nFs2, $04, nRst, $0C, nFs2, $04, nRst, $14, nFs2, $04
	dc.b	nRst, $08, nFs2, $04, nRst, $08, nFs2, $04, nRst, $08, nFs2, $04
	dc.b	nRst, $08, nFs2, $04, nRst, $04, nB2, $04, nRst, $04, nB2, $04
	dc.b	nRst, $0C, nB2, $04, nB2, $04, nA2, $04, nRst, $04, nA2, $04
	dc.b	nRst, $0C, nA2, $04, nA2, $04, nG2, $04, nRst, $04, nG2, $04
	dc.b	nRst, $0C, nG2, $04, nG2, $04, nFs2, $04, nRst, $04, nFs2, $04
	dc.b	nRst, $0C, nFs2, $04, nFs2, $04, nB2, $04, nRst, $04, nB2, $04
	dc.b	nRst, $0C, nB2, $04, nB2, $04, nD3, $04, nRst, $04, nD3, $04
	dc.b	nRst, $0C, nD3, $04, nD3, $04, nA2, $04, nRst, $04, nA2, $04
	dc.b	nRst, $0C, nA2, $04, nA2, $04, nA2, $04, nRst, $04, nA2, $04
	dc.b	nRst, $0C, nA2, $04, nA2, $04, nB2, $04, nRst, $04, nB2, $04
	dc.b	nRst, $0C, nB2, $04, nB2, $04, nA2, $04, nRst, $04, nA2, $04
	dc.b	nRst, $0C, nA2, $04, nA2, $04, nG2, $04, nRst, $04, nG2, $04
	dc.b	nRst, $0C, nG2, $04, nG2, $04, nFs2, $04, nRst, $04, nFs2, $04
	dc.b	nRst, $0C, nFs2, $04, nFs2, $04, nB2, $04, nRst, $04, nB2, $04
	dc.b	nRst, $0C, nB2, $04, nB2, $04, nD3, $04, nRst, $04, nD3, $04
	dc.b	nRst, $0C, nD3, $04, nD3, $04, nA2, $04, nRst, $04, nA2, $04
	dc.b	nRst, $0C, nA2, $04, nA2, $04, nA2, $04, nRst, $04, nA2, $04
	dc.b	nRst, $0C, nA2, $04, nA2, $04, nB2, $04, nRst, $04, nB2, $04
	dc.b	nRst, $0C, nB2, $04, nB2, $04, nA2, $04, nRst, $04, nA2, $04
	dc.b	nRst, $0C, nA2, $04, nA2, $04, nG2, $04, nRst, $04, nG2, $04
	dc.b	nRst, $0C, nG2, $04, nG2, $04, nFs2, $04, nRst, $04, nFs2, $04
	dc.b	nRst, $0C, nFs2, $04, nFs2, $04, nB2, $04, nRst, $04, nB2, $04
	dc.b	nRst, $0C, nB2, $04, nB2, $04, nD3, $04, nRst, $04, nD3, $04
	dc.b	nRst, $0C, nD3, $04, nD3, $04, nA2, $04, nRst, $04, nA2, $04
	dc.b	nRst, $0C, nA2, $04, nA2, $04, nA2, $04, nRst, $04, nA2, $04
	dc.b	nRst, $0C, nA2, $04, nA2, $04
	smpsJump            Snd_ICZ1_Jump03

; FM4 Data
Snd_ICZ1_FM4:
	smpsSetvoice        $03
	dc.b	nRst, $7F, nRst, $7F, nRst, $02

Snd_ICZ1_Jump02:
	dc.b	nRst, $40, nRst, $40, nRst, $40, nRst, $40, nRst, $40, nRst, $40
	dc.b	nRst, $40, nRst, $40, nB3, $10, nB4, $10, nA4, $20, nCs4, $0C
	dc.b	nD4, $0C, nE4, $08, nA3, $20, nB3, $10, nB4, $10, nA4, $20
	dc.b	nCs4, $30, nD4, $08, nCs4, $08, nB3, $10, nB4, $10, nA4, $20
	dc.b	nD4, $0C, nE4, $0C, nFs4, $08, nA3, $20, nB3, $10, nB4, $08
	dc.b	nB4, $08, nA4, $08, nFs4, $08, nFs4, $04, nE4, $0C, nFs4, $20
	dc.b	nD4, $10, nE4, $10, nFs4, $40, nRst, $7F, nRst, $7F, nRst, $7F
	dc.b	nRst, $43, nB3, $10, nB4, $10, nA4, $20, nCs4, $0C, nD4, $0C
	dc.b	nE4, $08, nA3, $20, nB3, $10, nB4, $10, nA4, $20, nCs4, $30
	dc.b	nD4, $08, nCs4, $08, nB3, $10, nB4, $10, nA4, $20, nD4, $0C
	dc.b	nE4, $0C, nFs4, $08, nA3, $20, nB3, $10, nB4, $08, nB4, $08
	dc.b	nA4, $08, nFs4, $08, nFs4, $04, nE4, $0C, nFs4, $20, nD4, $10
	dc.b	nE4, $10, nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43
	dc.b	nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43
	dc.b	nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43
	dc.b	nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43, nRst, $43
	dc.b	nRst, $43, nFs4, $0C, nG4, $0C, nAb4, $0C, nA4, $0C, nBb4, $08
	dc.b	nB4, $10, nB5, $10, nA5, $20, nCs5, $0C, nD5, $0C, nE5, $08
	dc.b	nA4, $20, nB4, $10, nB5, $10, nA5, $20, nCs5, $30, nD5, $08
	dc.b	nCs5, $08, nB4, $10, nB5, $10, nA5, $20, nD5, $0C, nE5, $0C
	dc.b	nFs5, $08, nA4, $20, nB4, $10, nB5, $08, nB5, $08, nA5, $08
	dc.b	nFs5, $08, nFs5, $04, nE5, $0C, nFs5, $40, nRst, $7F, nRst, $7F
	dc.b	nRst, $02
	smpsJump            Snd_ICZ1_Jump02

; FM5 Data
Snd_ICZ1_FM5:
	smpsSetvoice        $04
	dc.b	nRst, $7F, nRst, $7F, nRst, $02

Snd_ICZ1_Jump01:
	dc.b	nRst, $78, nRst, $78, nRst, $78, nRst, $78, nRst, $78, nRst, $78
	dc.b	nRst, $78, nRst, $78, nRst, $78, nFs4, $08, nG4, $0C, nFs4, $0C
	dc.b	nE4, $08, nD4, $0C, nB3, $0C, nD4, $08, nFs4, $20, nFs4, $0C
	dc.b	nG4, $08, nA4, $0C, nE4, $20, nFs4, $0C, nFs4, $0C, nA4, $08
	dc.b	nB4, $28, nB4, $08, nCs5, $08, nD5, $08, nD5, $0C, nCs5, $08
	dc.b	nB4, $0C, nA4, $0C, nFs4, $08, nE4, $0C, nFs4, $20, nFs4, $0C
	dc.b	nG4, $08, nA4, $0C, nE4, $20, nD4, $10, nCs4, $10, nB3, $40
	dc.b	nRst, $5C, nRst, $5C, nRst, $5C, nRst, $5C, nRst, $5C, nRst, $5C
	dc.b	nRst, $5C, nRst, $5C, nRst, $5C, nRst, $5C, nRst, $5C, nRst, $5C
	dc.b	nRst, $5C, nRst, $5C, nRst, $5C, nRst, $5C
	smpsSetvoice        $05
	dc.b	nB2, $18, nB2, $08, nB2, $08, nA2, $18, nG2, $0C, nA2, $08
	dc.b	nG2, $0C, nFs2, $20, nB2, $10, nE3, $08, nD3, $08, nCs3, $08
	dc.b	nB2, $08, nE3, $08, nCs3, $48, nB2, $18, nCs3, $08, nD3, $08
	dc.b	nE3, $08, nFs3, $08, nFs3, $18, nE3, $08, nD3, $08, nB2, $08
	dc.b	nCs3, $08, nA2, $08, nFs2, $08, nB2, $40, nFs2, $40, nRst, $08
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08, nRst, $08
	dc.b	nFs2, $08, nRst, $10, nFs2, $08, nRst, $04, nFs2, $08, nRst, $04
	dc.b	nFs2, $08, nRst, $04, nFs2, $08, nRst, $04, nFs2, $08
	smpsModSet          $00, $01, $02, $04
	dc.b	nB3, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nB3, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOff
	dc.b	nFs4, $08, nE4, $08, nD4, $04, nRst, $04, nCs4, $0F
	smpsDetune          $0F
	dc.b	smpsNoAttack, $01
	smpsDetune          $01
	dc.b	smpsNoAttack, nD4, $01, smpsNoAttack, $01, smpsNoAttack, $01, smpsNoAttack, $01, smpsNoAttack, $01, smpsNoAttack
	dc.b	$01, smpsNoAttack, $01, smpsNoAttack, $01
	smpsDetune          $F4
	dc.b	smpsNoAttack, $01
	smpsDetune          $05
	dc.b	smpsNoAttack, nCs4, $06
	smpsDetune          $09
	dc.b	smpsNoAttack, $01
	smpsDetune          $FA
	dc.b	smpsNoAttack, nD4, $01, smpsNoAttack, $01, smpsNoAttack, $01, smpsNoAttack, $01, smpsNoAttack, $01, smpsNoAttack
	dc.b	$01, smpsNoAttack, $01, smpsNoAttack, $01
	smpsDetune          $09
	dc.b	smpsNoAttack, nCs4, $01
	smpsDetune          $03
	dc.b	smpsNoAttack, $06
	smpsDetune          $F0
	dc.b	smpsNoAttack, nD4, $01
	smpsDetune          $FA
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01, smpsNoAttack, $01, smpsNoAttack, $01, smpsNoAttack, $01, smpsNoAttack, $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsDetune          $EE
	dc.b	smpsNoAttack, $01
	smpsDetune          $03
	dc.b	smpsNoAttack, nCs4, $07, nB3, $09
	smpsModSet          $00, $01, $01, $04
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nB3, $01
	smpsModOff
	dc.b	smpsNoAttack, $07, nA3, $08, nD3, $08, nCs3, $08
	smpsModSet          $00, $01, $00, $04
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	dc.b	nA2, $10, nFs2, $11
	smpsModSet          $00, $01, $01, $04
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsSetvoice        $04
	smpsModOn
	smpsModOn
	dc.b	nB3, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nD4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsDetune          $02
	smpsModOn
	dc.b	nD4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $FB
	dc.b	smpsNoAttack, nEb4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $F3
	dc.b	smpsNoAttack, nE4, $01
	smpsModOn
	smpsDetune          $FA
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nD4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nB3, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsDetune          $02
	smpsModOn
	dc.b	nD4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $FB
	dc.b	smpsNoAttack, nEb4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $F3
	dc.b	smpsNoAttack, nE4, $01
	smpsModOn
	smpsDetune          $FA
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nD4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nB3, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsDetune          $02
	smpsModOn
	dc.b	nD4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $FB
	dc.b	smpsNoAttack, nEb4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $F3
	dc.b	smpsNoAttack, nE4, $01
	smpsModOn
	smpsDetune          $FA
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nD4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nB3, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsDetune          $03
	smpsModOn
	dc.b	nE4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $FC
	dc.b	smpsNoAttack, nF4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $F2
	dc.b	smpsNoAttack, nFs4, $01
	smpsModOn
	smpsDetune          $FA
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nE4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nD4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nE4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	nRst, $01
	smpsModOn
	smpsModOn
	smpsDetune          $02
	smpsModOn
	dc.b	nD4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsDetune          $FB
	dc.b	smpsNoAttack, nEb4, $01
	smpsDetune          $F3
	dc.b	smpsNoAttack, nE4, $01
	smpsDetune          $FA
	dc.b	smpsNoAttack, $04
	smpsDetune          $F7
	dc.b	nF4, $01
	smpsDetune          $18
	dc.b	smpsNoAttack, $01
	smpsDetune          $F7
	dc.b	smpsNoAttack, nFs4, $06
	smpsModSet          $00, $01, $00, $04
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $08
	dc.b	nG4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $EF
	dc.b	smpsNoAttack, nAb4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $09
	dc.b	smpsNoAttack, $01
	smpsModOn
	smpsModOn
	smpsModOn
	smpsDetune          $EE
	dc.b	smpsNoAttack, nA4, $01
	smpsModOn
	smpsModOn
	smpsModOn
	dc.b	smpsNoAttack, $04
	smpsDetune          $02
	dc.b	nC4, $01
	smpsDetune          $FF
	dc.b	smpsNoAttack, nCs4, $01
	smpsDetune          $F8
	dc.b	smpsNoAttack, nD4, $06, nCs4, $20, nB3, $10, nB3, $10, nRst, $7F, nRst
	dc.b	$7F, nRst, $02
	smpsJump            Snd_ICZ1_Jump01

; PSG1 Data
Snd_ICZ1_PSG1:
	dc.b	nRst, $7F, nRst, $7F, nRst, $02

Snd_ICZ1_Jump07:
	dc.b	nRst, $7F, nRst, $7F, nRst, $12, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nFs1, $04, nRst, $08, nFs1, $04
	dc.b	nRst, $08, nFs1, $04, nRst, $0C, nFs1, $04, nRst, $0C, nFs0, $04
	dc.b	nRst, $08, nFs0, $04, nRst, $08, nFs0, $04, nRst, $0C, nFs0, $04
	dc.b	nRst, $14, nFs0, $04, nRst, $08, nFs0, $04, nRst, $08, nFs0, $04
	dc.b	nRst, $08, nFs0, $04, nRst, $08, nFs0, $04, nRst, $04, nB1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nG1, $04, nRst, $04, nD1, $04, nRst, $04, nG0, $04
	dc.b	nRst, $0C, nE1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nG1, $04, nRst, $04, nD1, $04, nRst, $04, nG0, $04
	dc.b	nRst, $0C, nE1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nG1, $04, nRst, $04, nD1, $04, nRst, $04, nG0, $04
	dc.b	nRst, $0C, nE1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nG1, $04, nRst, $04
	smpsJump            Snd_ICZ1_Jump07

; PSG2 Data
Snd_ICZ1_PSG2:
	dc.b	nRst, $7F, nRst, $7F, nRst, $02

Snd_ICZ1_Jump06:
	dc.b	nRst, $7F, nRst, $7F, nRst, $0A, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nA1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nG1, $04, nRst, $04, nD1, $04
	dc.b	nRst, $04, nG0, $04, nRst, $0C, nE1, $04, nRst, $04, nG1, $04
	dc.b	nRst, $04, nFs1, $04, nRst, $0C, nB1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04, nB0, $04, nRst, $0C, nA1, $04, nRst, $04, nE1, $04
	dc.b	nRst, $04, nA0, $04, nRst, $0C, nFs1, $04, nRst, $08, nFs1, $04
	dc.b	nRst, $08, nFs1, $04, nRst, $0C, nFs1, $04, nRst, $14, nFs1, $04
	dc.b	nRst, $08, nFs1, $04, nRst, $08, nFs1, $04, nRst, $0C, nFs1, $04
	dc.b	nRst, $14, nFs1, $04, nRst, $08, nFs1, $04, nRst, $08, nFs1, $04
	dc.b	nRst, $08, nFs1, $04, nRst, $08, nFs1, $04, nRst, $04, nB2, $04
	dc.b	nRst, $04, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nG1, $04, nRst, $04, nD1, $04, nRst, $04, nG0, $04
	dc.b	nRst, $0C, nE1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nG1, $04, nRst, $04, nD1, $04, nRst, $04, nG0, $04
	dc.b	nRst, $0C, nE1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nG1, $04, nRst, $04, nD1, $04, nRst, $04, nG0, $04
	dc.b	nRst, $0C, nE1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $0C, nB1, $04, nRst, $04, nFs1, $04, nRst, $04, nB0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nE1, $04, nRst, $04, nA0, $04
	dc.b	nRst, $0C, nA1, $04, nRst, $04, nG1, $04, nRst, $04, nFs1, $04
	dc.b	nRst, $04
	smpsJump            Snd_ICZ1_Jump06

Snd_ICZ1_Voices:
;	Voice $00
;	$3A
;	$31, $73, $25, $41, 	$9F, $5F, $5F, $9C, 	$08, $07, $07, $1E
;	$03, $04, $04, $04, 	$26, $16, $26, $07, 	$28, $23, $2A, $03
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $02, $07, $03
	smpsVcCoarseFreq    $01, $05, $03, $01
	smpsVcRateScale     $02, $01, $01, $02
	smpsVcAttackRate    $1C, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1E, $07, $07, $08
	smpsVcDecayRate2    $04, $04, $04, $03
	smpsVcDecayLevel    $00, $02, $01, $02
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $03, $2A, $23, $28

;	Voice $01
;	$34
;	$02, $12, $71, $01, 	$1F, $0F, $1F, $14, 	$00, $0A, $00, $00
;	$00, $00, $00, $00, 	$00, $F6, $00, $06, 	$1D, $00, $20, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $01, $00
	smpsVcCoarseFreq    $01, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $1F, $0F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $0A, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $0F, $00
	smpsVcReleaseRate   $06, $00, $06, $00
	smpsVcTotalLevel    $00, $20, $00, $1D

;	Voice $02
;	$3B
;	$38, $32, $30, $30, 	$1B, $1F, $1F, $1F, 	$0E, $0C, $12, $05
;	$00, $00, $00, $05, 	$3A, $3A, $5A, $EF, 	$1E, $2D, $0F, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $00, $00, $02, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0C, $0E
	smpsVcDecayRate2    $05, $00, $00, $00
	smpsVcDecayLevel    $0E, $05, $03, $03
	smpsVcReleaseRate   $0F, $0A, $0A, $0A
	smpsVcTotalLevel    $00, $0F, $2D, $1E

;	Voice $03
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $00, $29, $07
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $29, $00, $23

;	Voice $04
;	$3A
;	$01, $02, $01, $01, 	$50, $10, $0E, $52, 	$04, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$48, $08, $08, $09, 	$1D, $39, $23, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $00, $00, $01
	smpsVcAttackRate    $12, $0E, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $04
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $00, $23, $39, $1D

;	Voice $05
;	$3A
;	$01, $03, $01, $01, 	$14, $10, $10, $14, 	$0A, $05, $05, $05
;	$03, $00, $00, $00, 	$26, $16, $16, $19, 	$19, $28, $2E, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $10, $10, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $03
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $09, $06, $06, $06
	smpsVcTotalLevel    $00, $2E, $28, $19

