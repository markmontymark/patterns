
#//TeaLeaves.java - the decoratee

define ['Structural/Decorator/Tea'
],(
Tea
) ->
  class TeaLeaves extends Tea

    constructor : ->
      @teaIsSteeped = false

    steepTea : ->
      @teaIsSteeped = true
      "tea leaves are steeping"

  return TeaLeaves
