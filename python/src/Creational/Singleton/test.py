#//TestSingleSpoon.java - testing the singleton

define [ 'Creational/Singleton/SingleSpoon'
], (
SingleSpoon
) ->

  'use strict'

  test = {}

  beforeEach ->
    test.SingleSpoon = new SingleSpoon()
  
  describe 'Singleton Class', ->
    it 'singleton should be loaded', ->
      self.assertEqual(test.SingleSpoon).toBeDefined()

    it 'should have a singleSpoon instance', ->
      aSingleSpoon = new SingleSpoon()
      self.assertEqual(aSingleSpoon, test.SingleSpoon)

    it 'get the spoon from the SingleSpoon instance', ->
      spoon = test.SingleSpoon.getTheSpoon()
      self.assertEqual(spoon).toBeDefined()

    it 'try to get the spoon again, it should already be in use', ->
      spoon = test.SingleSpoon.getTheSpoon()
      self.assertEqual(spoon).toBeNull()

    it 'return the spoon again', ->
      spoon = test.SingleSpoon.getTheSpoon()
      self.assertEqual(spoon).toBeNull()
      test.SingleSpoon.returnTheSpoon()
      spoon = test.SingleSpoon.getTheSpoon()
      self.assertEqual(spoon).toBeDefined()

