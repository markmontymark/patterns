
define ['Structural/Bridge/SodaImpSingleton'
],(
SodaImpSingleton
) ->

  class Soda

    sodaImp : null

    constructor : ->
      throw "Can't instantiate abstract class, Soda"

    setSodaImp : ->
      @sodaImp = SodaImpSingleton.getTheSodaImp()

    getSodaImp : ->
      @sodaImp

    pourSoda : ->
      throw "Unimplemented method Soda.pourSoda"

  return Soda
