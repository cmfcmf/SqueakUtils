as yet unclassified
setHandleInformation: handle mask: mask flags: flags
	"https://docs.microsoft.com/en-us/windows/desktop/api/handleapi/nf-handleapi-sethandleinformation"
	<apicall: bool 'SetHandleInformation' (ulonglong ulong ulong) module: 'kernel32.dll'>
	^ self externalCallFailed