as yet unclassified
getExitCodeProcess: process exitCode: exitCode
	"https://docs.microsoft.com/en-us/windows/desktop/api/processthreadsapi/nf-processthreadsapi-getexitcodeprocess"
	<apicall: bool 'GetExitCodeProcess' (ulonglong ulong*) module: 'kernel32.dll'>
	^ self externalCallFailed