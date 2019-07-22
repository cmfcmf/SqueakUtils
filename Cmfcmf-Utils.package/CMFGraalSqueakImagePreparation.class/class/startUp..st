as yet unclassified
startUp: resuming
	
	self cleanUpWhenStartingGraalSqueak ifFalse: [^ self].
	resuming ifFalse: [^ self].
	Polyglot isPolyglotAccessAllowed ifFalse: [^ self].
	
	"DisplayScreen fullScreenOff."
	DisplayScreen setNewScreenSize: (1600@900 min: Display extent).
	Cursor useBiggerCursors: false.
	Morph useSoftDropShadow: false.
	Preferences setPreference: #balloonHelpEnabled toValue: false.
	ECPreferences enabled: false.
	Project current world removeAllMorphs.
	Smalltalk removeFromStartUpList: ExternalWebBrowser.
	TheWorldMainDockingBar cleanUp.
	Preferences setPreference: #warnIfNoChangesFile toValue: false