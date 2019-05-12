as yet unclassified
terminateProcess: handle exitCode: exitCode
	"https://docs.microsoft.com/en-us/windows/desktop/api/processthreadsapi/nf-processthreadsapi-terminateprocess"
	<apicall: bool 'TerminateProcess' (ulonglong ulong) module: 'kernel32.dll'>
	^ self externalCallFailed