
#//TestChaiDecorator.java - testing the decorator

define ['Structural/Decorator/TeaLeaves',
'Structural/Decorator/ChaiDecorator'
],(
TeaLeaves,
ChaiDecorator
) ->

  'use strict'

  describe 'Test Structural Decorator', ->
    it 'Can we brew some chai?', ->
      teaLeaves = new TeaLeaves()
      chaiDecorator = new ChaiDecorator(teaLeaves)
      self.assertEqual(chaiDecorator.steepTea(), "bay leaf is steeping ,cinnamon stick is steeping ,ginger is steeping ,honey is steeping ,soy milk is steeping ,vanilla bean is steeping , tea is steeping with chai")

