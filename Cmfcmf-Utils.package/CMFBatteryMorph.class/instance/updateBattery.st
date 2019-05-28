as yet unclassified
updateBattery
	| battery charge |
	battery := CMFBattery forCurrentPlatform.
	charge := battery chargeLevel.
	charge ifNil: [
		percentage contents: '??%'.
		icon image: UiFugueIcons batteryExclamationIcon	
	] ifNotNil: [ 
		percentage contents: charge asString, '%'.
		icon image: (true caseOf: {
			[battery isCharging] -> [UiFugueIcons batteryPlugIcon].
			[charge >= 80] -> [UiFugueIcons batteryFullIcon].
			[charge >= 50] -> [UiFugueIcons batteryIcon].
			[charge >= 35] -> [UiFugueIcons batteryExclamationIcon]
		} otherwise: [UiFugueIcons batteryLowIcon])
	]