as yet unclassified
forCurrentPlatform
	^ Smalltalk platformName = 'Win32' 
		ifTrue: [CMFWiFiWindows new] 
		ifFalse: [self error]