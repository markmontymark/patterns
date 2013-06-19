
define ['Creational/Factory_Method/Soup',
],(
Soup
) ->

	class FishChowder extends Soup
		constructor : ->
			@soupName = 'FishChowder'
			@soupIngredients = [
				'1 Pound Fresh fish',
				'1 cup fruit or vegetables',
				'1/2 cup milk',
				'1/4 cup butter',
				'1/4 cup chips',
			]

	return FishChowder
