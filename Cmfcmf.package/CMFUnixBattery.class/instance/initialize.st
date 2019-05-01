as yet unclassified
initialize
	| batteriesDirectory |
	super initialize.
	batteriesDirectory := FileDirectory on: '/sys/class/power_supply'.
	batteryDirectory := batteriesDirectory directoryEntries detect: [:each | 
		(batteriesDirectory / each name oldFileNamed: 'type') upToEnd = 'Battery'].