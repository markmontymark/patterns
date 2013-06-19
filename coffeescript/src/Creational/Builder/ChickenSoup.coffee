
define ['Creational/Builder/Soup'
],(
Soup
) ->

	class ChickenSoup extends Soup
		constructor : ->
			@soupName = 'ChickenSoup'
			@soupIngredients = [
				'1 Pound diced chicken'
				'1/2 cup rice'
				'1 cup bullion'
				'1/16 cup butter'
				'1/4 cup diced carrots'
			]

	return ChickenSoup
