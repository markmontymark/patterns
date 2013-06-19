

define ['Creational/Builder/FishChowder'
],(
FishChowder
) ->

	class BostonFishChowder extends FishChowder
		constructor : ->
			@soupName = 'ScrodFishChowder'
			@soupIngredients = [
				'1 Pound Fresh Scrod',
				'1 cup corn',
				'1/2 cup heavy cream',
				'1/4 cup butter',
				'1/4 cup potato chips' ]

	return BostonFishChowder
