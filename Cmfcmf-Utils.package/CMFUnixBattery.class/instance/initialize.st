as yet unclassified
initialize
	| batteriesDirectory |
	super initialize.
	batteriesDirectory := FileDirectory on: '/sys/class/power_supply'.
	batteryDirectory := FileDirectory on: (batteriesDirectory directoryEntries detect: [:each | 
		| file isBattery |
		file := batteriesDirectory / each name readOnlyFileNamed: 'type'.
		isBattery := (file upTo: Character lf) = 'Battery'.
		file close.
		isBattery]) fullName