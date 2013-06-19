

#//AbstractFork.java - Two of Two Prototypes
define [],() ->
  class AbstractFork

    constructor : ->
      throw "Can't instantiate abstract class, AbstractFork"

    forkName : null

    setForkName : (forkName) ->
      @forkName = forkName

    getForkName : ->
      @forkName

    clone : ->
      Object.create(@)
      #JSON.parse(JSON.stringify(@))

  return AbstractFork
