as yet unclassified
makePipe: isReader

	| attributes read write flags readFlags writeFlags |
	attributes := CMFWinSecurityAttributes new
		nLength: CMFWinSecurityAttributes byteSize;
		bInheritHandle: true;
		yourself.
	readFlags := isReader ifTrue: [0] ifFalse: [1]. "HANDLE_FLAG_INHERIT"
	writeFlags := isReader ifTrue: [1] ifFalse: [0]. "HANDLE_FLAG_INHERIT"
	
	read := self makePointerOf: ExternalType unsignedLongLong.
	write := self makePointerOf: ExternalType unsignedLongLong.
	self noError: [self createPipeReadHandle: read writeHandle: write attributes: attributes size: 4096].
	self noError: [self setHandleInformation: (read getHandle unsignedLongLongAt: 1) mask: 1 flags: readFlags]. "HANDLE_FLAG_INHERIT"
	self noError: [self setHandleInformation: (write getHandle unsignedLongLongAt: 1) mask: 1 flags: writeFlags]. "HANDLE_FLAG_INHERIT"
	
	flags := self makePointerOf: ExternalType ulong.
	self noError: [self getHandleInformation: (read getHandle unsignedLongLongAt: 1) flags: flags].
	flags := flags getHandle unsignedLongAt: 1.
	self assert: [flags = readFlags].
	
	flags := self makePointerOf: ExternalType ulong.
	self noError: [self getHandleInformation: (write getHandle unsignedLongLongAt: 1) flags: flags].
	flags := flags getHandle unsignedLongAt: 1.
	self assert: [flags = writeFlags].
	
	^ {read . write}