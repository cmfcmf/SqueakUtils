as yet unclassified
closeHandle: handle
	"https://docs.microsoft.com/en-us/windows/desktop/api/handleapi/nf-handleapi-closehandle"
	<apicall: bool 'CloseHandle' (ulonglong) module: 'kernel32.dll'>
	^ self externalCallFailed