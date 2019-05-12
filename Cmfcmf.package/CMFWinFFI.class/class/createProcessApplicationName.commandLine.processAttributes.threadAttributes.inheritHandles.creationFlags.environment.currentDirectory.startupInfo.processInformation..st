as yet unclassified
createProcessApplicationName: applicationName commandLine: commandLine processAttributes: processAttributes threadAttributes: threadAttributes inheritHandles: inheritHandles creationFlags: creationFlags environment: environment currentDirectory: currentDirectory startupInfo: startupInfo processInformation: processInformation
	"https://docs.microsoft.com/en-us/windows/desktop/api/processthreadsapi/nf-processthreadsapi-createprocessa"
	<apicall: bool 'CreateProcessA' (char* char* Win32SecurityAttributes* Win32SecurityAttributes* bool ulong void* char* Win32StartupInfo* Win32ProcessInformation*) module: 'kernel32.dll'>
	^ self externalCallFailed