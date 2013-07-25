
#//SaladFork.java - One of Two Concrete Prototypes extending the AbstractFork Prototype
define ['Creational/Prototype/AbstractFork'
],(
AbstractFork
) ->

  class SaladFork extends AbstractFork

    constructor : ->
      @setForkName 'Salad Fork'

  return SaladFork
