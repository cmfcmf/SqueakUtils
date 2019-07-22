as yet unclassified
startUp: resuming
	
	CMFGraalSqueakImagePreparation cleanUpWhenStartingGraalSqueak ifFalse: [^ self].
	resuming ifFalse: [^ self].
	Polyglot isPolyglotAccessAllowed ifFalse: [^ self].
	
	Compiler evaluate: CMFGraalSqueakImagePreparation additionalGraalSqueakStartUpCode