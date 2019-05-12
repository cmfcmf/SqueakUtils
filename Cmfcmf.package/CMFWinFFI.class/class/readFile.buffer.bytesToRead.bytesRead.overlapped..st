as yet unclassified
readFile: handle buffer: buffer bytesToRead: bytesToRead bytesRead: bytesRead overlapped: overlapped
	"https://docs.microsoft.com/de-de/windows/desktop/api/fileapi/nf-fileapi-readfile"
	<apicall: bool 'ReadFile' (ulonglong char* ulong ulong* void*) module: 'kernel32.dll'>
	^ self externalCallFailed