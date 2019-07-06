actions
connectToSSID: aString

	| lines profile |
	lines := (CMFWinFFI executeAndWait: 'netsh wlan show profiles') asString lines.
	profile := (self profiles detect: [:each | each second = aString]) first.
	CMFWinFFI executeAndWait: 'netsh wlan connect name="', profile, '" ssid="', aString, '"'.