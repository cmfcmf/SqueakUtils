as yet unclassified
fields
"
Win32ProcessInformation defineFields

typedef struct _PROCESS_INFORMATION {
  HANDLE hProcess;
  HANDLE hThread;
  DWORD  dwProcessId;
  DWORD  dwThreadId;
} PROCESS_INFORMATION, *PPROCESS_INFORMATION, *LPPROCESS_INFORMATION;
"
	^ #(
		#( #hProcess 'ulonglong')
		
		#( #hThread 'ulonglong')
		
		#( #dwProcessId 'ulong')
		#( #dwThreadId 'ulong'))