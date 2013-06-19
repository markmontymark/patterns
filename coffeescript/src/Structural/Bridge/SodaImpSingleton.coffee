
#//SodaImpSingleton.java - a Singleton to hold the current SodaImp

define [],() ->
  class SodaImpSingleton

    @sodaImp : null

    constructor :(sodaImpIn) ->
      SodaImpSingleton.sodaImp = sodaImpIn

    @getTheSodaImp : -> SodaImpSingleton.sodaImp

  return SodaImpSingleton
