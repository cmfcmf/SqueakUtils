as yet unclassified
isCharging
	^ (self getBatteryInfo: 'BatteryStatus') = 2