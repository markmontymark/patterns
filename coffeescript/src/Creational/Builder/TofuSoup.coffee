
define ['Creational/Builder/Soup',
],(
Soup
) ->

  class TofuSoup extends Soup
    constructor : ->
      @soupName = 'Tofu Soup'
      @soupIngredients = [
        '1 Pound tofu',
        '1 cup carrot juice',
        '1/4 cup spirolena',
      ]

  return TofuSoup
