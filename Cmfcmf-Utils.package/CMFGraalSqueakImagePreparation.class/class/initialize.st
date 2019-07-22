as yet unclassified
initialize

	"CMFGraalSqueakImagePreparation initialize"
	super initialize.
	"We need to execute before FileDirectory so that Squeak hasn't loaded changes and sources yet and we still have time to set the #warnIfNoChangesFile preference."
	Smalltalk addToStartUpList: self before: FileDirectory