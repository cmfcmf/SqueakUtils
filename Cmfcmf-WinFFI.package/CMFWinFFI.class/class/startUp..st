as yet unclassified
startUp: resuming

	resuming ifTrue: [
		uLongPointer := nil.
		[uLongPointer := CMFWinFFI makePointerOf: ExternalType ulong] ifError: []]