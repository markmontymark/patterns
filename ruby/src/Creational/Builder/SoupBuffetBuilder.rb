

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
#//SoupBuffetBuilder - a Builder
#

require "common/SoupBuffet"
require "common/ChickenSoup"
require "common/ClamChowder"
require "common/FishChowder"
require "common/Minnestrone"
require "common/PastaFazul"
require "common/TofuSoup"
require "common/VegetableSoup"

class SoupBuffetBuilder

	def initialize() 
		raise Exception("Can't instantiate abstract class, SoupBuffetBuilder")
	end

	def setSoupBuffetName()
 		raise Exception("Unimplemented method SoupBuffetBuilder.setSoupBuffetName")
	end

	def getSoupBuffet()
		return @soupBuffet
	end

	def buildSoupBuffet()
		@soupBuffet = SoupBuffet.new
	end

	def buildChickenSoup()
		@soupBuffet.chickenSoup = ChickenSoup.new
	end

	def buildClamChowder()
		@soupBuffet.clamChowder = ClamChowder.new
	end

	def buildFishChowder()
		@soupBuffet.fishChowder = FishChowder.new
	end

	def buildMinnestrone()
		@soupBuffet.minnestrone = Minnestrone.new
	end

	def buildPastaFazul()
		@soupBuffet.pastaFazul = PastaFazul.new
	end

	def buildTofuSoup()
		@soupBuffet.tofuSoup = TofuSoup.new
	end

	def buildVegetableSoup()
  		@soupBuffet.vegetableSoup = VegetableSoup.new
	end

end
