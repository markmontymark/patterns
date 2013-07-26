
#//TestFacade.java - testing the Facade

define ['Structural/Facade/FacadeCuppaMaker'
],(
FacadeCuppaMaker
) ->

  'use strict'
  
  describe 'Test Structural Facade', ->
    it 'Make a cuppa with a FacadeCuppaMaker',->
      cuppaMaker = new FacadeCuppaMaker()
      self.assertEqual(cuppaMaker).toBeDefined()
      teaCup = cuppaMaker.makeACuppa()
      self.assertEqual(teaCup).toBeDefined()
      self.assertEqual(teaCup.toString(), "A nice cuppa tea!")
