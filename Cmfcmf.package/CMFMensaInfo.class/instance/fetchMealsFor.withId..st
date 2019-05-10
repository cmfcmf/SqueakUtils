as yet unclassified
fetchMealsFor: aString withId: aNumber 
	| response url |
	url := 'https://openmensa.org/api/v2/canteens/', aNumber asString, '/days/', Date today yyyymmdd, '/meals'.
	response := WebClient httpGet: url.
	response code = 200 ifFalse: [
		UIManager default inform: 'Could not load meals for "', aString, '"'. 
		^ Array new]. 
	^ (Json readFrom: response content readStream) collect: 
		[:each | each location: aString. each]