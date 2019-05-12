as yet unclassified
isProcessRunning: handle
	[ | exitCode |
	exitCode := self makePointerOf: ExternalType ulong.
	self noError: [self getExitCodeProcess: handle exitCode: exitCode].
	exitCode := exitCode getHandle unsignedLongAt: 1.
	^ exitCode = 259 ] ifError: [false]