
#//BostonConcreteSoupFactory.java - One of Two concrete factories extending the abstract factory

define ['Creational/Abstract_Factory/AbstractSoupFactory',
'Creational/Abstract_Factory/BostonClamChowder',
'Creational/Abstract_Factory/BostonFishChowder'
],(
AbstractSoupFactory,
BostonClamChowder,
BostonFishChowder
) ->
  class BostonConcreteSoupFactory extends AbstractSoupFactory
    constructor : ->
      @factoryLocation = "Boston"

    makeClamChowder : -> new BostonClamChowder()
    makeFishChowder : -> new BostonFishChowder()

  return BostonConcreteSoupFactory
