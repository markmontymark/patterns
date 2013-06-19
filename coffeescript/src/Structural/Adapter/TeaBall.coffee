
#//TeaBall.java - the adapter

define ['Structural/Adapter/TeaBag'],(
TeaBag
) ->

  class TeaBall extends TeaBag

    looseLeafTea : null

    constructor : (@looseLeafTea) ->
      @teaBagIsSteeped = @looseLeafTea.teaIsSteeped

    steepTeaInCup : ->
      @looseLeafTea.steepTea()
      @teaBagIsSteeped = true

  return TeaBall
