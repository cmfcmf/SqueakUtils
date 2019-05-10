as yet unclassified
getFilterOffsets: index
	"Calculate matching character indexes for the current filter term."
	
	| filter offsets currentIndex sub emphasized |
	filter := listSource filterTerm.
	filter ifEmpty: [^ Array empty].

	offsets := OrderedCollection new.
	(self item: index) withIndexDo: [:item :idx |
		item := item asStringOrText.

		emphasized := item isText 
			ifTrue: [font emphasized: (item emphasisAt: 1)] 
			ifFalse: [font].
		item := item asString.
		
		currentIndex := 1.
		[currentIndex > 0] whileTrue: [
			currentIndex := item findString: filter startingAt: currentIndex caseSensitive: false.
			currentIndex > 0 ifTrue: [ | left width |
				left := emphasized widthOfString: item from: 1 to: currentIndex-1.
				sub := item copyFrom: currentIndex to: currentIndex + filter size - 1.
				width := emphasized widthOfString: sub.
				offsets addLast: {(left to: left + width). sub. idx}.
				currentIndex := currentIndex + 1]]].

	^ offsets