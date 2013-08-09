
#/BostonSoupBuffetBuilder - Two of Two Builder Subclasses

require "Creational/Builder/SoupBuffetBuilder"
require "common/BostonClamChowder"
require "common/BostonFishChowder"

class BostonSoupBuffetBuilder < SoupBuffetBuilder

	def initialize
	end

	def buildClamChowder()
   		@soupBuffet.clamChowder = BostonClamChowder.new
	end

	def buildFishChowder()
   		@soupBuffet.fishChowder = BostonFishChowder.new
	end

	def setSoupBuffetName()
 		@soupBuffet.setSoupBuffetName("Boston Soup Buffet")
	end

end
