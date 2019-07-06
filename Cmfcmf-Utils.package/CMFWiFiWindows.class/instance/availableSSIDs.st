accessing
availableSSIDs

	| ssids |
	ssids := (CMFWinFFI executeAndWait: 'netsh wlan show networks mode=bssid')
		asString
		lines
		select: [:each | each beginsWith: 'SSID '] 
		thenCollect: [:each | (each copyAfter: $:) allButFirst].
	ssids := ssids select: [:each | each notEmpty].
	^ (self profiles select: [:each | each third] thenCollect: [:each | each first]), ssids