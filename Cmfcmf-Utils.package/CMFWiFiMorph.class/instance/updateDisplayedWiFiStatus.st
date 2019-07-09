private
updateDisplayedWiFiStatus

	| tmp |
	tmp := [self wifi connectedSSIDAndSignalStrength] ifError: [{'error'. 0}].
	nameMorph contents: (tmp first ifNil: ['---']).
	iconMorph image: (self iconForWiFiSignalStrength: tmp second)