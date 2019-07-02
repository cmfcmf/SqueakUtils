*Cmfcmf-Utils
vs: aBlock vs: aBlock2

	^ String streamContents: [:stream |
		Smalltalk garbageCollect.
		stream nextPutAll: (self vs: aBlock).
		Smalltalk garbageCollect.
		stream cr; nextPutAll: 'vs. '; nextPutAll: aBlock2 bench]