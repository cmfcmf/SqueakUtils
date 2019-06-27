as yet unclassified
peek: aHandle

	"CMFWinFFI noError: ["CMFWinFFI peekPipe: aHandle 
		buffer: nil bytesToRead: 0 bytesRead: nil bytesAvailable: uLongPointer bytesLeft: nil"]".
	^ uLongPointer getHandle unsignedLongAt: 1