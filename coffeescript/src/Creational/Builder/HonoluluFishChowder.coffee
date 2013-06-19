
define ['Creational/Builder/FishChowder'
],(
FishChowder
) ->

  class HonoluluFishChowder extends FishChowder
    constructor : ->
      @soupName = 'OpakapakaFishChowder'
      @soupIngredients = [
        '1 Pound Fresh Opakapaka Fish',
        '1 cup pineapple chunks',
        '1/2 cup coconut milk',
        '1/4 cup SPAM',
        '1/4 cup taro chips' ]

  return HonoluluFishChowder
