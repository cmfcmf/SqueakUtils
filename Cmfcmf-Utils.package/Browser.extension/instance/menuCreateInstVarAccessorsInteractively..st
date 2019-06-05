*Cmfcmf-Utils
menuCreateInstVarAccessorsInteractively: aMenu 

	<classListMenuShifted: false>
	^ aMenu 
		addList: #(- ('interactive inst var accessors' interactivelyCreateInstVarAccessors));
		yourself