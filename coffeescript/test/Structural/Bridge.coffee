
#//TestBridge.java - testing the Bridge

define ['Structural/Bridge/SodaImpSingleton',
'Structural/Bridge/Soda',
'Structural/Bridge/CherrySodaImp',
'Structural/Bridge/GrapeSodaImp',
'Structural/Bridge/OrangeSodaImp',
'Structural/Bridge/MediumSoda',
'Structural/Bridge/SuperSizeSoda'
],(
SodaImpSingleton,
Soda,
CherrySodaImp,
GrapeSodaImp,
OrangeSodaImp,
MediumSoda,
SuperSizeSoda
) ->

  'use strict'

  testCherryPlatform = ->
    describe 'testing on the cherry platform', ->
      it 'test medium and supersize', ->
        sodaImpSingleton = new SodaImpSingleton(new CherrySodaImp())
        mediumSoda = new MediumSoda()
        expect(mediumSoda).toBeDefined()
        expect(mediumSoda.pourSoda()).toEqual("...glug...,Yummy Cherry Soda!,...glug...,Yummy Cherry Soda!")
        superSizeSoda = new SuperSizeSoda()
        expect(superSizeSoda.pourSoda()).toEqual("...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ")


  testGrapePlatform = ->
    describe 'testing on the grape platform', ->
      it 'test medium and supersize', ->
        sodaImpSingleton = new SodaImpSingleton(new GrapeSodaImp())
        mediumSoda = new MediumSoda()
        expect(mediumSoda.pourSoda()).toEqual("...glug...,Delicious Grape Soda!,...glug...,Delicious Grape Soda!")
        superSizeSoda = new SuperSizeSoda()
        expect(superSizeSoda.pourSoda()).toEqual("...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ")


  testOrangePlatform = ->
    describe 'testing on the orange platform', ->
      it 'test medium and supersize', ->
        sodaImpSingleton = new SodaImpSingleton(new OrangeSodaImp())
        mediumSoda = new MediumSoda()
        expect(mediumSoda.pourSoda()).toEqual("...glug...,Citrusy Orange Soda!,...glug...,Citrusy Orange Soda!")
        superSizeSoda = new SuperSizeSoda()
        expect(superSizeSoda.pourSoda()).toEqual("...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ")

  testCherryPlatform()
  testGrapePlatform()
  testOrangePlatform()
