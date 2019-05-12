as yet unclassified
execute: cmd
	| startupInfo processInformation |
	startupInfo := CMFWinStartupInfo new.
	startupInfo 
		cb: CMFWinStartupInfo byteSize;
		dwFlags: 1. "STARTF_USESHOWWINDOW"
	processInformation := CMFWinProcessInformation new.
	self assert: [self createProcessApplicationName: nil commandLine: cmd
		processAttributes: nil threadAttributes: nil 
		inheritHandles: false creationFlags: 0 
		environment: nil currentDirectory: nil 
		startupInfo: startupInfo processInformation: processInformation].
	^ processInformation