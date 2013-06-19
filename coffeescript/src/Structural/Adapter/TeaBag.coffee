
define [],() ->
  class TeaBag

    teaBagIsSteeped : null

    constructor : ->
      @teaBagIsSteeped = false

    steepTeaInCup : ->
      @teaBagIsSteeped = true
      'tea bag is steeping in cup'

  return TeaBag
