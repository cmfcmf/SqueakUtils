as yet unclassified
additionalGraalSqueakStartUpCode

	<preference: 'Additional GraalSqueak startup code'
		category: 'Cmfcmf'
		description: 'Additional code to evaluate when GraalSqueak has started.'
		type: #String>
	^ AdditionalGraalSqueakStartUpCode ifNil: ['']