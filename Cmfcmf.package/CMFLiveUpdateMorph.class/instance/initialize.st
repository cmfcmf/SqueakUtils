as yet unclassified
initialize
	super initialize.
	self color: Color orange;
		extent: 200@200;
		morphInitBlock: [Morph new].

	watchProcess := [[ | newClass newTestee |
		newTestee := self morphInitBlock value.
		newClass := newTestee class.
		(newClass methodDict ~= methodDict) ifTrue: [
			self removeAllMorphs.
			testee := newTestee.
			self addMorph: testee.
			testee position: self position.
			methodDict := Dictionary newFrom: newClass methodDict 
		].
		(Delay forSeconds: 1.5) wait
	] repeat] fork