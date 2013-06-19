
#//SoupSpoon.java - One of Two Concrete Prototypes extending the AbstractSpoon Prototype
define ['Creational/Prototype/AbstractSpoon'
],(
AbstractSpoon
) ->

  class SoupSpoon extends AbstractSpoon

    constructor : ->
      @setSpoonName 'Soup Spoon'

  return SoupSpoon
