as yet unclassified
list
	"Remove unused properties from the meal Json data"

	^ self meals collect: [:each | {each at: #location. each at: #category. each at: #name}]