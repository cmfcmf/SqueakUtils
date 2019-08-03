as yet unclassified
peek: aHandle

	| pointer |
	pointer := CMFFFILongPointer value.
	"CMFWinFFI noError: ["CMFWinFFI peekPipe: aHandle 
		buffer: nil
		bytesToRead: 0
		bytesRead: nil
		bytesAvailable: pointer
		bytesLeft: nil"]".
	^ pointer getHandle unsignedLongAt: 1