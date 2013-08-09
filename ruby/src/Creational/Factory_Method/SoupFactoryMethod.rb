#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry truett
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
#  SoupFactoryMethod - a Factory Method

require "common/SoupBuffet"
require "common/ChickenSoup"
require "common/ClamChowder"
require "common/FishChowder"
require "common/Minnestrone"
require "common/PastaFazul"
require "common/TofuSoup"
require "common/VegetableSoup"

class SoupFactoryMethod
	
	def makeSoupBuffet()
 		return SoupBuffet.new()
	end

	def makeChickenSoup()
 		return ChickenSoup.new()
	end

	def makeClamChowder()
 		return ClamChowder.new()
	end

	def makeFishChowder()
 		return FishChowder.new()
	end

	def makeMinnestrone()
 		return Minnestrone.new()
	end

	def makePastaFazul()
 		return PastaFazul.new()
	end

	def makeTofuSoup()
 		return TofuSoup.new()
	end

	def makeVegetableSoup()
 		return VegetableSoup.new()
	end

	def makeBuffetName()
 		return "Soup Buffet"
	end

end

