as yet unclassified
makePointerOf: anExternalType
	
	^ ExternalData fromHandle: (ExternalAddress gcallocate: anExternalType byteSize) type: anExternalType asPointerType