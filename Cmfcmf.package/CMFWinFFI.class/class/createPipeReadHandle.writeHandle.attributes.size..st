as yet unclassified
createPipeReadHandle: read writeHandle: write attributes: attributes size: size
	"https://msdn.microsoft.com/en-us/library/windows/desktop/aa365152%28v=vs.85%29.aspx?f=255&MSPPError=-2147217396"
	<apicall: bool 'CreatePipe' (void* void* Win32SecurityAttributes* ulong) module: 'kernel32.dll'>
	^ self externalCallFailed