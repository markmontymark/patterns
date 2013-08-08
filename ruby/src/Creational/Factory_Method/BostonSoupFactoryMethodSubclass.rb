

#//BostonSoupFactoryMethodSubclass - Two of Two Subclass Factory Methods
require "Creational/Factory_Method/SoupFactoryMethod"
require "common/BostonClamChowder"
require "common/BostonFishChowder"

class BostonSoupFactoryMethodSubclass < SoupFactoryMethod

	def makeBuffetName()
   		return "Boston Soup Buffet"
	end

	def makeClamChowder()
   		return BostonClamChowder.new()
	end

	def makeFishChowder()
   		return BostonFishChowder.new()
	end

end
