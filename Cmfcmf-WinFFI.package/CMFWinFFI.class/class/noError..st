as yet unclassified
noError: aBlock

	aBlock value ifFalse: [ | error size length message |
		size := 2000.
		error := self getLastError.
		message := ByteArray new: size.
		length := self formatMessage: 16r1000 "FORMAT_MESSAGE_FROM_SYSTEM" 
			source: nil messageId: error languageId: 0 buffer: message size: size arguments: nil.
		length = 0 ifTrue: [^ self error: 'An error occurred during error handling. Duh.'].
		message := message copyFrom: 1 to: length.
		self error: message asString, ' (code ', error, ')']