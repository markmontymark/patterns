#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Methods to make and return components of one object various ways.
#
#//In this example the SoupFactoryMethod defines the makeSoupBuffet method which returns a SoupBuffet object. The SoupFactoryMethod also defines the methods needed in creating the SoupBuffet.
#
#//The BostonSoupFactoryMethodSubclass and the HonoluluSoupFactoryMethodSubclass both extend the SoupFactoryMethod. An object can be defined as an SoupFactoryMethod, and instantiated as either a BostonSoupFactoryMethodSubclass (BSFMS) or a HonoluluSoupFactoryMethodSubclass (HSFMS).
#
#//Both BSFMS and HSFMS override SoupFactoryMethod's makeFishChowder method. The BSFMS returns a SoupBuffet with a FishChowder subclass of BostonFishChowder, while the HSFMS returns a SoupBuffet with a FishChowder subclass of HonoluluFishChowder.
#//Still reading? Save your time, watch the video lessons!
#//Video tutorial on design patterns
#//SoupFactoryMethod.java - a Factory Method

define ['Creational/Factory_Method/SoupBuffet',
'Creational/Factory_Method/ChickenSoup',
'Creational/Factory_Method/ClamChowder',
'Creational/Factory_Method/FishChowder',
'Creational/Factory_Method/Minnestrone',
'Creational/Factory_Method/PastaFazul',
'Creational/Factory_Method/TofuSoup',
'Creational/Factory_Method/VegetableSoup'
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

	class SoupFactoryMethod
		constructor : ->

		makeSoupBuffet : -> new SoupBuffet()

		makeChickenSoup : -> new ChickenSoup()
		makeClamChowder : -> new ClamChowder()
		makeFishChowder : -> new FishChowder()
		makeMinnestrone : -> new Minnestrone()
		makePastaFazul : -> new PastaFazul()
		makeTofuSoup : -> new TofuSoup()
		makeVegetableSoup : -> new VegetableSoup()

		makeBuffetName : -> "Soup Buffet"

	return SoupFactoryMethod
