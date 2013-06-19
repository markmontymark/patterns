
define ['Creational/Abstract_Factory/Soup',
],(
Soup
) ->

	class Minnestrone extends Soup
		constructor : ->
			@soupName = 'Minnestrone'
			@soupIngredients = [
				'1 Pound tomatos',
				'1/2 cup pasta',
				'1 cup tomato juice',
			]

	return Minnestrone
