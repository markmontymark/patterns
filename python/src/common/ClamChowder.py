
define ['Creational/Abstract_Factory/Soup',
],(
Soup
) ->

	class ClamChowder extends Soup
		constructor : ->
			@soupName = 'ClamChowder'
			@soupIngredients = [
				'1 Pound Fresh Clams',
				'1 cup fruit or vegetables',
				'1/2 cup milk',
				'1/4 cup butter',
				'1/4 cup chips',
			]

	return ClamChowder
