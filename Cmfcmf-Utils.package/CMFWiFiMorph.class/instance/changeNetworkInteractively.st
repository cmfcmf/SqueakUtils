private
changeNetworkInteractively

	| ssids ssid |
	ActiveHand releaseMouseFocus.
	ssids := self wifi availableSSIDs.
	ssid := UIManager default chooseFrom: {'-- disconnect --'}, ssids values: {false}, ssids.
	ssid ifNil: [^ self].
	ssid = false
		ifTrue: [self wifi disconnect]
		ifFalse: [self wifi connectToSSID: ssid].
	self updateDisplayedWiFiStatus