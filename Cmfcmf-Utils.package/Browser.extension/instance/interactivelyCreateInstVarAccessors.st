*Cmfcmf-Utils
interactivelyCreateInstVarAccessors

	self selectedClassOrMetaClass
		ifNotNil: [:aClass | aClass interactivelyCreateInstVarAccessors].
