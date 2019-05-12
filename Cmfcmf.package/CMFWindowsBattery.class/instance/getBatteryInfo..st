as yet unclassified
getBatteryInfo: aString
	| matches output |
	[ 
		output := CMFWinFFI executeAndWait: 'WMIC Path Win32_Battery Get ', aString.
		matches := (RxMatcher forString: '\d+') matchesIn: output asString] ifError: [^ nil].
	^ matches at: 1 ifPresent: [:val | val asNumber] ifAbsent: [nil]