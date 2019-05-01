as yet unclassified
isCharging
	^ (batteryDirectory oldFileNamed: 'status') upToEnd = 'Charging'