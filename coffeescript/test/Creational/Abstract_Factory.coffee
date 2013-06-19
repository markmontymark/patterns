

#//TestAbstractSoupFactory.java - Testing the abstract factory

define [ 'Creational/Abstract_Factory/BostonConcreteSoupFactory',
'Creational/Abstract_Factory/HonoluluConcreteSoupFactory'
],(BostonConcreteSoupFactory,
HonoluluConcreteSoupFactory
) ->

  MakeSoupOfTheDay = (concreteSoupFactory) ->
    today = new Date()
    #switch today.getDay()
    #  when 0 then return concreteSoupFactory.makeChickenSoup()
    #  when 1 then return concreteSoupFactory.makeClamChowder()
    #when 2 then 
    return concreteSoupFactory.makeFishChowder()
    #  when 3 then return concreteSoupFactory.makeMinnestrone()
    #  when 4 then return concreteSoupFactory.makePastaFazul()
    #  when 5 then return concreteSoupFactory.makeTofuSoup()
    #  when 6 then return concreteSoupFactory.makeVegetableSoup()

  describe 'Abstract Factory Class', ->
    it 'loaded BostonConcreteSoupFactory', ->
      expect( new BostonConcreteSoupFactory()).toBeDefined()

    it 'loaded HonoluluConcreteSoupFactory', ->
      expect( new HonoluluConcreteSoupFactory()).toBeDefined()

    bSoupFactory = new BostonConcreteSoupFactory()
    bsoupOfTheDay = MakeSoupOfTheDay(bSoupFactory)
    it 'expecting Boston soup of the day to be ScrodFishChowder', ->
      expect( "The Soup of the day in #{bSoupFactory.factoryLocation} is #{bsoupOfTheDay.soupName}").toEqual("The Soup of the day in Boston is ScrodFishChowder")

    hSoupFactory = new HonoluluConcreteSoupFactory()
    hsoupOfTheDay = MakeSoupOfTheDay(hSoupFactory)
    it 'expecting Boston soup of the day to be ScrodFishChowder', ->
       expect( "The Soup of the day in #{hSoupFactory.factoryLocation} is #{hsoupOfTheDay.soupName}").toEqual(
         "The Soup of the day in Honolulu is OpakapakaFishChowder")
