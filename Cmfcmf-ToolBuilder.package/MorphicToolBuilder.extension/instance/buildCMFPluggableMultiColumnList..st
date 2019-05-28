*Cmfcmf-ToolBuilder
buildCMFPluggableMultiColumnList: aSpec
	| widget getIndex setIndex |
	aSpec getSelected ifNotNil: [self error: 'not implemented'].

	getIndex := aSpec getIndex.
	setIndex := aSpec setIndex.
	widget := CMFPluggableMultiColumnListMorph on: aSpec model
				list: aSpec list
				selected: getIndex
				changeSelected: setIndex
				menu: aSpec menu
				keystroke: aSpec keyPress.
	self register: widget id: aSpec name.

	self setListPropertiesFor: widget spec: aSpec.
	^widget