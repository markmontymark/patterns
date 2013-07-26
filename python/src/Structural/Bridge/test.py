
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
        self.assertEqual(mediumSoda).toBeDefined()
        self.assertEqual(mediumSoda.pourSoda(), "...glug...,Yummy Cherry Soda!,...glug...,Yummy Cherry Soda!")
        superSizeSoda = new SuperSizeSoda()
        self.assertEqual(superSizeSoda.pourSoda(), "...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ")


  testGrapePlatform = ->
    describe 'testing on the grape platform', ->
      it 'test medium and supersize', ->
        sodaImpSingleton = new SodaImpSingleton(new GrapeSodaImp())
        mediumSoda = new MediumSoda()
        self.assertEqual(mediumSoda.pourSoda(), "...glug...,Delicious Grape Soda!,...glug...,Delicious Grape Soda!")
        superSizeSoda = new SuperSizeSoda()
        self.assertEqual(superSizeSoda.pourSoda(), "...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ")


  testOrangePlatform = ->
    describe 'testing on the orange platform', ->
      it 'test medium and supersize', ->
        sodaImpSingleton = new SodaImpSingleton(new OrangeSodaImp())
        mediumSoda = new MediumSoda()
        self.assertEqual(mediumSoda.pourSoda(), "...glug...,Citrusy Orange Soda!,...glug...,Citrusy Orange Soda!")
        superSizeSoda = new SuperSizeSoda()
        self.assertEqual(superSizeSoda.pourSoda(), "...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ")

  testCherryPlatform()
  testGrapePlatform()
  testOrangePlatform()
