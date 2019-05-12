as yet unclassified
fields
"
Win32StartupInfo defineFields

typedef struct _STARTUPINFOA {
  DWORD  cb;
  LPSTR  lpReserved;
  LPSTR  lpDesktop;
  LPSTR  lpTitle;
  DWORD  dwX;
  DWORD  dwY;
  DWORD  dwXSize;
  DWORD  dwYSize;
  DWORD  dwXCountChars;
  DWORD  dwYCountChars;
  DWORD  dwFillAttribute;
  DWORD  dwFlags;
  WORD   wShowWindow;
  WORD   cbReserved2;
  LPBYTE lpReserved2;
  HANDLE hStdInput;
  HANDLE hStdOutput;
  HANDLE hStdError;
} STARTUPINFOA, *LPSTARTUPINFOA;
"
	^ #(
		#( #cb 'ulong')
		#(nil 'void' 4)
		
		#( #lpReserved 'char*')
		
		#( #lpDesktop 'char*')
		
		#( #lpTitle 'char*')
		
		#( #dwX 'ulong')
		#( #dwY 'ulong')
		
		#( #dwXSize 'ulong')
		#( #dwYSize 'ulong')
		
		#( #dwXCountChars 'ulong')
		#( #dwYCountChars 'ulong')
		
		#( #dwFillAttribute 'ulong')
		#( #dwFlags 'ulong')
		
		#( #wShowWindow 'ushort')
		#( #cbReserved2 'ushort')
		#(nil 'void' 4)
		
		#( #lpReserved2 'byte*')
		
		#( #hStdInput 'ulonglong')
		
		#( #hStdOutput 'ulonglong')
		
		#( #hStdError 'ulonglong'))