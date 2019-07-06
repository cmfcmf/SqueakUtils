private
profiles

	^ [ | lines profiles |
		lines := (CMFWinFFI executeAndWait: 'netsh wlan show profiles') asString lines.
		profiles := lines select: [:each | each withBlanksTrimmed beginsWith: 'Profil ']
			thenCollect: [:each | (each copyAfter: $:) allButFirst].
		profiles collect: [:each | | line hidden ssid |
			lines := (CMFWinFFI executeAndWait: 'netsh wlan show profiles name="', each, '"') asString lines.
			line := lines detect: [:l | l withBlanksTrimmed beginsWith: 'SSID-Name'].
			ssid := (line copyAfter: $") allButLast.
			line := lines detect: [:l | l withBlanksTrimmed beginsWith: 'Netzwerk'].
			hidden := line includesSubstring: 'Verbinden, auch wenn dieses Netzwerk nicht'.
			line := lines detect: [:l | l withBlanksTrimmed beginsWith: 'Verbindungsmodus'].
			hidden := hidden and: [line includesSubstring: 'Manuell verbinden'].
			{each. ssid. hidden}]] once