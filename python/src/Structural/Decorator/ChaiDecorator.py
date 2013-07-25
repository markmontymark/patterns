#//ChaiDecorator.java - the decorator

define ['Structural/Decorator/Tea'
],(
Tea
) ->
  class ChaiDecorator extends Tea

    chaiIngredients : []

    constructor : (@teaToMakeChai) ->
      @chaiIngredients = [
        'bay leaf',
        'cinnamon stick',
        'ginger',
        'honey',
        'soy milk',
        'vanilla bean']

    steepTea : ->
      @steepChai()

    steepChai : ->
      @teaToMakeChai.steepTea()
      @steepChaiIngredients() + ', tea is steeping with chai'

    steepChaiIngredients : ->
      (ingred + ' is steeping 'for ingred in @chaiIngredients).toString()

  return ChaiDecorator
