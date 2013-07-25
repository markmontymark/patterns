#//SodaImp.java - the Implementation Base Class

define [],() ->

  class SodaImp

    constructor : ->
      throw "Can't instantiate abstract class, SodaImp"

    pourSodaImp : ->
      throw "Unimplemented method, SodaImp.pourSodaImp"

  return SodaImp
