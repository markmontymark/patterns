

#//TestPrototype.java - testing the Prototype
define ['Creational/Prototype/PrototypeFactory',
'Creational/Prototype/SoupSpoon',
'Creational/Prototype/SaladSpoon',
'Creational/Prototype/SaladFork'
],(
PrototypeFactory,
SoupSpoon,
SaladSpoon,
SaladFork
) ->

  'use strict'

  describe "Test Creational Prototype", ->
    it 'Creating a Prototype Factory with a SoupSpoon and a SaladFork', ->
      prototypeFactory = new PrototypeFactory(new SoupSpoon(), new SaladFork())
      spoon = prototypeFactory.makeSpoon()
      fork = prototypeFactory.makeFork()
      self.assertEqual(spoon).toBeDefined()
      self.assertEqual(fork).toBeDefined()
      self.assertEqual("Spoon: #{spoon.getSpoonName()} , Fork: #{fork.getForkName()}", "Spoon: Soup Spoon , Fork: Salad Fork")

    it 'Creating a Prototype Factory with a SaladSpoon and a SaladFork', ->
      prototypeFactory = new PrototypeFactory(new SaladSpoon(), new SaladFork())
      spoon = prototypeFactory.makeSpoon()
      fork = prototypeFactory.makeFork()
      self.assertEqual(spoon).toBeDefined()
      self.assertEqual(fork).toBeDefined()
      self.assertEqual("Spoon: #{spoon.getSpoonName()} , Fork: #{fork.getForkName()}", "Spoon: Salad Spoon , Fork: Salad Fork")
