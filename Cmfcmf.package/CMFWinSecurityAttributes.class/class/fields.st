as yet unclassified
fields
"
Win32SecurityAttributes defineFields

typedef struct _SECURITY_ATTRIBUTES {
  DWORD  nLength;
  LPVOID lpSecurityDescriptor;
  BOOL   bInheritHandle;
} SECURITY_ATTRIBUTES, *PSECURITY_ATTRIBUTES, *LPSECURITY_ATTRIBUTES;
"
	^ #(
		#(nLength 'ulong') 
		#(nil 'void' 4) 
		
		#(lpSecurityDescriptor 'ulonglong') 
		
		#(bInheritHandle 'bool' 4))