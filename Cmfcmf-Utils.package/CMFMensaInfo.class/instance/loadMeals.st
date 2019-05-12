as yet unclassified
loadMeals
	self meals: 
		(self fetchMealsFor: 'Mensa' withId: 62), 
		(self fetchMealsFor: 'Ulf''s Café' withId: 112)