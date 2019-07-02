*Cmfcmf-Utils
vs: aBlock vs: aBlock2 vs: aBlock3

	^ String streamContents: [:stream |
		Smalltalk garbageCollect.
		stream nextPutAll: (self vs: aBlock vs: aBlock2).
		Smalltalk garbageCollect.
		stream cr; nextPutAll: 'vs. '; nextPutAll: aBlock3 bench]