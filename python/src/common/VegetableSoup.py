
define ['Creational/Abstract_Factory/Soup',
],(
Soup
) ->

  class VegetableSoup extends Soup
    constructor : ->
      @soupName = 'Vegetable Soup'
      @soupIngredients = [
        '1 cup bullion',
        '1/4 cup carrots',
        '1/4 cup potatoes',
      ]

  return VegetableSoup
