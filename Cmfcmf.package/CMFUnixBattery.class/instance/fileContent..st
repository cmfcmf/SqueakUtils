as yet unclassified
fileContent: name
	| file content |
	file := batteryDirectory readOnlyFileNamed: name.
	content := file upTo: Character lf.
	file close.
	^ content