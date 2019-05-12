as yet unclassified
writeFile: handle buffer: buffer bytesToWrite: bytesToWrite bytesWritten: bytesWritten overlapped: overlapped
	"https://docs.microsoft.com/en-us/windows/desktop/api/fileapi/nf-fileapi-writefile"
	<apicall: bool 'WriteFile' (ulonglong char* ulong ulong* void*) module: 'kernel32.dll'>
	^ self externalCallFailed