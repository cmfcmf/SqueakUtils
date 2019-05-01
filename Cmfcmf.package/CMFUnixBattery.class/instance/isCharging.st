as yet unclassified
isCharging
	^ (self fileContent: 'status') = 'Charging'