as yet unclassified
peekPipe: handle buffer: buffer bytesToRead: bytesToRead bytesRead: bytesRead bytesAvailable: bytesAvailable bytesLeft: bytesLeft
	"https://msdn.microsoft.com/de-de/125e0fbb-9013-4194-bc0b-1b8ea7db799e?f=255&MSPPError=-2147217396"
	<apicall: bool 'PeekNamedPipe' (ulonglong char* ulong ulong* ulong* ulong*) module: 'kernel32.dll'>
	^ self externalCallFailed