as yet unclassified
peek: aHandle

	| bytesAvailable |
	bytesAvailable := CMFWinFFI makePointerOf: ExternalType ulong.
	CMFWinFFI noError: [CMFWinFFI peekPipe: aHandle 
		buffer: nil bytesToRead: 0 bytesRead: nil bytesAvailable: bytesAvailable bytesLeft: nil].
	^ bytesAvailable getHandle unsignedLongAt: 1