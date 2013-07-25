
#//HonoluluConcreteSoupFactory - Two of Two concrete factories extending the abstract factory

define ['Creational/Abstract_Factory/AbstractSoupFactory',
'Creational/Abstract_Factory/HonoluluClamChowder',
'Creational/Abstract_Factory/HonoluluFishChowder'
],(
AbstractSoupFactory,
HonoluluClamChowder,
HonoluluFishChowder
) ->
  class HonoluluConcreteSoupFactory extends AbstractSoupFactory
    constructor : ->
      @factoryLocation = 'Honolulu'

    makeClamChowder : ->
      new HonoluluClamChowder()

    makeFishChowder : ->
      new HonoluluFishChowder()

  return HonoluluConcreteSoupFactory
