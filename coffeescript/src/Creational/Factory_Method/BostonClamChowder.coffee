
define ['Creational/Factory_Method/ClamChowder'
] , (
ClamChowder
) ->
  class BostonClamChowder extends ClamChowder
    constructor : ->
      @soupName = 'QuahogChowder'
      @soupIngredients = [
        '1 Pound Fresh Quahogs',
        '1 cup corn',
        '1/2 cup heavy cream',
        '1/4 cup butter',
        '1/4 cup potato chips' ]

  return BostonClamChowder
