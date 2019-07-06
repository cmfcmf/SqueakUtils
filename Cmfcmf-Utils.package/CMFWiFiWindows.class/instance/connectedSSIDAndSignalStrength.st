accessing
connectedSSIDAndSignalStrength

	| ssid line lines strength |
	lines := (CMFWinFFI executeAndWait: 'netsh wlan show interfaces') asString lines.
	line := lines detect: [:each | each withBlanksTrimmed beginsWith: 'SSID'] ifNone: [^ {nil. 0}].
	ssid := (line copyAfter: $:) allButFirst.
	line := lines detect: [:each | each withBlanksTrimmed beginsWith: 'Signal'].
	strength := (line copyAfter: $:) allButFirst allButLast asInteger.
	^ {ssid. strength}