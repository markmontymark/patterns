

#//AbstractSpoon.java - One of Two Prototypes

define [],() ->
  class AbstractSpoon

    constructor : ->
      console.warn "in AbstractSpoon ctor"
      throw "Can't instantiate abstract class, AbstractSpoon"

    spoonName : null

    setSpoonName : (spoonName) ->
      @spoonName = spoonName

    getSpoonName : ->
      @spoonName

    clone : ->
      Object.create(@)
      #JSON.parse(JSON.stringify(@))

  return AbstractSpoon
