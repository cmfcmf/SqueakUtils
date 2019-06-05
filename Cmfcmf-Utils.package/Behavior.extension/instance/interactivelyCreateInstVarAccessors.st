*Cmfcmf-Utils
interactivelyCreateInstVarAccessors

	self instVarNames
		collect: [:each | each asSymbol]
		thenDo: [:instVar |
			(self canUnderstand: instVar) ifFalse: [self createGetterFor: instVar].
			(self canUnderstand: instVar asMutator) ifFalse: [
				self interactivelyCreateSetterFor: instVar]].

