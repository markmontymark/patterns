
#//TestFacade.java - testing the Facade

define ['Structural/Facade/FacadeCuppaMaker'
],(
FacadeCuppaMaker
) ->

  'use strict'
  
  describe 'Test Structural Facade', ->
    it 'Make a cuppa with a FacadeCuppaMaker',->
      cuppaMaker = new FacadeCuppaMaker()
      expect(cuppaMaker).toBeDefined()
      teaCup = cuppaMaker.makeACuppa()
      expect(teaCup).toBeDefined()
      expect(teaCup.toString()).toEqual("A nice cuppa tea!")
