*Cmfcmf-Utils
vs: aBlock

	^ String streamContents: [:stream |
		Smalltalk garbageCollect.
		stream nextPutAll: self bench.
		Smalltalk garbageCollect.
		stream cr; nextPutAll: 'vs. '; nextPutAll: aBlock bench]