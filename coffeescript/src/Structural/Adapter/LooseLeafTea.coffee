
#//LooseLeafTea.java - the adaptee

define [],() ->

  class LooseLeafTea

    teaIsSteeped : null

    constructor : ->
      @teaIsSteeped = false

    steepTea : ->
      @teaIsSteeped = true
      'tea is steeping'

  return LooseLeafTea
