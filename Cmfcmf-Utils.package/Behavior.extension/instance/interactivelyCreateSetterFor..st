*Cmfcmf-Utils
interactivelyCreateSetterFor: aName

	| code className |
	className := (UIManager default chooseClassOrTrait) name.
	className := (className first isVowel ifTrue: ['an'] ifFalse: ['a']), className.
	code := '{1}: {2}\\	{3}{1} := {2}' withCRs
		format: {aName. className. self settersReturnValue ifTrue: ['^ '] ifFalse: ['']}.
	self compile: code classified: #accessing notifying: nil.