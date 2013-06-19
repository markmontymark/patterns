

#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Builder Overview
#//Make and return one object various ways.
#
#//In this example the abstract SoupBuffetBuilder defines the methods necessary to create a SoupBuffet.
#
#//BostonSoupBuffetBuilder and the HonoluluSoupBuffetBuilder both extend the SoupBuffetBuilder.
#
#//An object can be defined as an SoupBuffetBuilder, and instantiated as either a BostonSoupBuffetBuilder (BSBB) or a HonoluluSoupBuffetBuilder (HSBB). Both BSBB or HSBB have a buildFishChowder method, and both return a FishChowder type class. However, the BSBB returns a FishChowder subclass of BostonFishChowder, while the HSBB returns a FishChowder subclass of HonoluluFishChowder.
#//Still reading? Save your time, watch the video lessons!
#//Video tutorial on design patterns
#//SoupBuffetBuilder.java - a Builder
#

define ['Creational/Builder/SoupBuffet',
'Creational/Builder/ChickenSoup',
'Creational/Builder/ClamChowder',
'Creational/Builder/FishChowder',
'Creational/Builder/Minnestrone',
'Creational/Builder/PastaFazul',
'Creational/Builder/TofuSoup',
'Creational/Builder/VegetableSoup'
],(
SoupBuffet,
ChickenSoup,
ClamChowder,
FishChowder,
Minnestrone,
PastaFazul,
TofuSoup,
VegetableSoup
) ->

  class SoupBuffetBuilder

    constructor : ->
      throw "Can't instantiate abstract class, SoupBuffetBuilder"

    setSoupBuffetName : ->
      throw "Unimplemented method SoupBuffetBuilder.setSoupBuffetName"

    soupBuffet : null

    getSoupBuffet       : -> @soupBuffet
    buildSoupBuffet     : -> @soupBuffet = new SoupBuffet()
    buildChickenSoup     : -> @soupBuffet.chickenSoup = new ChickenSoup()
    buildClamChowder     : -> @soupBuffet.clamChowder = new ClamChowder()
    buildFishChowder     : -> @soupBuffet.fishChowder = new FishChowder()
    buildMinnestrone     : -> @soupBuffet.minnestrone = new Minnestrone()
    buildPastaFazul     : -> @soupBuffet.pastaFazul = new PastaFazul()
    buildTofuSoup       : -> @soupBuffet.tofuSoup = new TofuSoup()
    buildVegetableSoup   : -> @soupBuffet.vegetableSoup = new VegetableSoup()

  return SoupBuffetBuilder
