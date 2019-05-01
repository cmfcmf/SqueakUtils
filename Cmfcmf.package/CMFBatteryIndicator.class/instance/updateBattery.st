as yet unclassified
updateBattery
	| charge |
	charge := self getBatteryInfo: 'EstimatedChargeRemaining'.
	charge ifNil: [
		percentage contents: '??%'.
		icon image: UiFugueIcons batteryExclamationIcon	
	] ifNotNil: [ | batteryStatus |
		batteryStatus := self getBatteryInfo: 'BatteryStatus'.
		percentage contents: charge asString, '%'.
		batteryStatus = 2 ifTrue: [^ icon image: UiFugueIcons batteryPlugIcon].
		charge >= 80 ifTrue: [^ icon image: UiFugueIcons batteryFullIcon].
		charge >= 50 ifTrue: [^ icon image: UiFugueIcons batteryIcon].
		charge >= 35 ifTrue: [^ icon image: UiFugueIcons batteryLowIcon].
		true ifTrue: [^ icon image: UiFugueIcons batteryLowIcon]]