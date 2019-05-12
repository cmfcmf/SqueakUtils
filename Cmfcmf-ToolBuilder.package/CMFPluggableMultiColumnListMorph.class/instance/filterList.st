as yet unclassified
filterList
	self hasFilter
		ifTrue:
			[ | frontMatching substringMatching newList |
			self indicateFiltered.
			frontMatching := OrderedCollection new.
			substringMatching := OrderedCollection new.
			list withIndexDo: [ : each : n | | foundPos |
				foundPos := each inject: Float infinity into: [:min :item | | pos |
					pos := item asString
						findString: lastKeystrokes
						startingAt: 1
						caseSensitive: false.
					pos > 0 ifTrue: [min min: pos] ifFalse: [min]].
				foundPos = 1
					ifTrue: [frontMatching add: each]
					ifFalse: [foundPos < Float infinity ifTrue: [substringMatching add: each]]].
			newList := frontMatching , substringMatching.
			(newList isEmpty not or: [ self allowEmptyFilterResult ])
				ifTrue: [ list := newList ]
				ifFalse: 
					[ lastKeystrokes := lastKeystrokes allButLast: 1.
					self
						 flash ;
						 filterList ] ]
		ifFalse: [ self indicateUnfiltered ]