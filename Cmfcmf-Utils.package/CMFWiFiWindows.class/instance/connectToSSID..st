actions
connectToSSID: aString

	| lines profiles profile profilesAndSSIDs |
	lines := (CMFWinFFI executeAndWait: 'netsh wlan show profiles') asString lines.
	profiles := lines select: [:each | each withBlanksTrimmed beginsWith: 'Profil ']
		thenCollect: [:each | (each copyAfter: $:) allButFirst].
	profilesAndSSIDs := profiles collect: [:each | | line |
		lines := (CMFWinFFI executeAndWait: 'netsh wlan show profiles name="', each, '"') asString lines.
		line := lines detect: [:l | l withBlanksTrimmed beginsWith: 'SSID-Name'].
		{each. (line copyAfter: $") allButLast}].
	profile := (profilesAndSSIDs detect: [:each | each second = aString]) first.
	CMFWinFFI executeAndWait: 'netsh wlan connect name="', profile, '" ssid="', aString, '"'.