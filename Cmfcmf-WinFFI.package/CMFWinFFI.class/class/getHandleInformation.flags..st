as yet unclassified
getHandleInformation: handle flags: flags
	"https://docs.microsoft.com/en-us/windows/desktop/api/handleapi/nf-handleapi-sethandleinformation"
	<apicall: bool 'GetHandleInformation' (ulonglong ulong*) module: 'kernel32.dll'>
	^ self externalCallFailed