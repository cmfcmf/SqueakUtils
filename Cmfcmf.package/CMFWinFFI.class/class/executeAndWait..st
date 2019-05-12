as yet unclassified
executeAndWait: cmd
	| startupInfo processInformation pipe stdoutRead stdoutWrite output |
	pipe := CMFWinFFI makePipe: true.
	stdoutRead := pipe first.
	stdoutWrite := pipe second.
	
	startupInfo := CMFWinStartupInfo new.
	startupInfo 
		cb: CMFWinStartupInfo byteSize;
		dwFlags: (
			16r1 "STARTF_USESHOWWINDOW"
			bitOr: 16r100 "STARTF_USESTDHANDLES");
		wShowWindow: 0; "SW_HIDE"
		hStdOutput: (stdoutWrite getHandle unsignedLongLongAt: 1);
		yourself.
	processInformation := CMFWinProcessInformation new.
	self noError: [self createProcessApplicationName: nil 
		commandLine: cmd
		processAttributes: nil
		threadAttributes: nil
		inheritHandles: true 
		creationFlags: 0 
		environment: nil 
		currentDirectory: nil 
		startupInfo: startupInfo 
		processInformation: processInformation].
	
	output := ByteArray new.
	[[ | buffer bytesRead length isRunning |
		isRunning := self isProcessRunning: processInformation hProcess.
		length := self peek: (stdoutRead getHandle unsignedLongLongAt: 1).
		length > 0 
			ifTrue: [
				buffer := ByteArray new: length.
				bytesRead := self makePointerOf: ExternalType ulong.
				self noError: [self readFile: (stdoutRead getHandle unsignedLongLongAt: 1) 
					buffer: buffer bytesToRead: length bytesRead: bytesRead overlapped: nil].
				bytesRead := bytesRead getHandle unsignedLongAt: 1.
				self assert: [bytesRead = length].
				output := output, (buffer copyFrom: 1 to: bytesRead)]
			ifFalse: [(Delay forMilliseconds: 10) wait].
		isRunning not and: [length = 0]
	] ifError: [true]] whileFalse.
	
	self noError: [self closeHandle: (stdoutRead getHandle unsignedLongLongAt: 1)].
	self noError: [self closeHandle: (stdoutWrite getHandle unsignedLongLongAt: 1)].
	self noError: [self closeHandle: processInformation hProcess].
	self noError: [self closeHandle: processInformation hThread].
	
	^ output