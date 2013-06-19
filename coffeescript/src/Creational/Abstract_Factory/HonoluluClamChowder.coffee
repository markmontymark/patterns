
define ['Creational/Abstract_Factory/ClamChowder'
],(
ClamChowder
) ->

  class HonoluluClamChowder extends ClamChowder
    constructor : ->
      @soupName = 'PacificClamChowder'
      @soupIngredients = [
        '1 Pound Fresh Pacific Clams',
        '1 cup pineapple chunks',
        '1/2 cup coconut milk',
        '1/4 cup SPAM',
        '1/4 cup taro chips' ]

  return HonoluluClamChowder
