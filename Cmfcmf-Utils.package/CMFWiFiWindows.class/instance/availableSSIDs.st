accessing
availableSSIDs

	| ssids |
	ssids := (CMFWinFFI executeAndWait: 'netsh wlan show networks mode=bssid')
		asString
		lines
		select: [:each | each beginsWith: 'SSID '] 
		thenCollect: [:each | (each copyAfter: $:) allButFirst].
	ssids select: [:each | each notEmpty].
	ssids explore.
	^ ssids, (self profiles select: [:each | each third] thenCollect: [:each | each first])