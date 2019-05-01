as yet unclassified
loadMeals
	| response url |
	url := 'https://openmensa.org/api/v2/canteens/62/days/', Date today yyyymmdd, '/meals'.
	response := WebClient httpGet: url.
	self meals: (Json readFrom: response content readStream)