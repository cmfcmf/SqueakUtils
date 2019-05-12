as yet unclassified
makePointerOfObject: anExternalObject
	
	^ ExternalData fromHandle: anExternalObject getHandle type: anExternalObject class externalType asPointerType