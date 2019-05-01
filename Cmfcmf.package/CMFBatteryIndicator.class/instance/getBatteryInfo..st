as yet unclassified
getBatteryInfo: aString
	| matches |
	[ | p |
		p := ProcessWrapper new.
		p useStdout.
		self flag: #fixme. "This works on Windows 10, who knows where else?"
		p startWithCommand: 'WMIC Path Win32_Battery Get ', aString.
		matches := (RxMatcher forString: '\d+') matchesIn: p upToEnd ] ifError: [^ nil].
	^ matches at: 1 ifPresent: [:val | val asNumber] ifAbsent: [nil]