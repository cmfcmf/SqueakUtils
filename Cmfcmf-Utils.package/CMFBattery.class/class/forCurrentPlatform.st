as yet unclassified
forCurrentPlatform
	^ Smalltalk platformName = 'Win32' 
		ifTrue: [CMFWindowsBattery new] 
		ifFalse: [CMFUnixBattery new]