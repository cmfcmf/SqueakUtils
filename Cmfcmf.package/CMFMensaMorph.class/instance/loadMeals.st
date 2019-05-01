as yet unclassified
loadMeals
	| response |
	response := WebClient httpGet: 'https://openmensa.org/api/v2/canteens/62/days/2019-04-25/meals'.
	self meals: (Json readFrom: response content readStream)