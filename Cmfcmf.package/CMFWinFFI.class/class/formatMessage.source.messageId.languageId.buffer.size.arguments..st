as yet unclassified
formatMessage: flags source: source messageId: messageId languageId: languageId buffer: buffer size: size arguments: arguments
	"https://docs.microsoft.com/de-de/windows/desktop/api/winbase/nf-winbase-formatmessage"
	<apicall: ulong 'FormatMessageA' (ulong void* ulong ulong char* ulong void*) module: 'kernel32.dll'>
	^ self externalCallFailed