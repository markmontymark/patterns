
define [ 'Creational/Builder/Soup'
],(
Soup
) ->
  class PastaFazul extends Soup
    constructor : ->
      @soupName = 'Pasta Fazul'
      @soupIngredients = ['1 Pound tomatos',
        '1/2 cup pasta',
        '1/2 cup diced carrots',
        '1 cup tomato juice' ]

  return PastaFazul
