*Cmfcmf-Utils
tmpSubclass: aCollection

	| class category superClass |
	category := #TmpClasses.
	superClass := (self class withAllSuperclasses detect: [:each | each category ~= category]).
	class := superClass subclass: (superClass name, Time utcMicrosecondClock) asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: category.
	
	class class compile: 'shutDown

	self allInstances size = 0 ifTrue: [
		Smalltalk removeFromShutDownList: self.
		self removeFromSystem]' withCRs.
	
	Smalltalk addToShutDownList: class.
	
	aCollection do: [:each | | argIndex selector blockExecution object |
		argIndex := 1.
		selector := ''.
		blockExecution := ''.
		each key do: [:c | 
			selector := selector, c.
			c = $: ifTrue: [
				selector := selector, ' arg', argIndex, ' '.
				blockExecution := blockExecution, 'value: arg', argIndex, ' '.
				argIndex := argIndex + 1.]].
		blockExecution = '' ifTrue: [blockExecution := 'value'].
		
		class compile: ('{1}\\	^ {2} {3}' withCRs 
			format: {selector. each value storeString. blockExecution}).
		object := class basicNew.
		object copyFrom: self.
		self becomeForward: object]