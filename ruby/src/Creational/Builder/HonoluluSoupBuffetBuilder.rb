

#/HonoluluSoupBuffetBuilder - Two of Two Builder Subclasses

require "Creational/Builder/SoupBuffetBuilder"
require "common/HonoluluClamChowder"
require "common/HonoluluFishChowder"

class HonoluluSoupBuffetBuilder < SoupBuffetBuilder

   def initialize
   end

	def buildClamChowder()
   		@soupBuffet.clamChowder = HonoluluClamChowder.new
	end

	def buildFishChowder()
   		@soupBuffet.fishChowder = HonoluluFishChowder.new
	end

	def setSoupBuffetName()
 		@soupBuffet.soupBuffetName = "Honolulu Soup Buffet"
	end

end
