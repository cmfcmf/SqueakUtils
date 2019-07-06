private
updateDisplayedWiFiStatus

	| tmp |
	tmp := self wifi connectedSSIDAndSignalStrength.
	nameMorph contents: (tmp first ifNil: ['---']).
	iconMorph image: (self iconForWiFiSignalStrength: tmp second)