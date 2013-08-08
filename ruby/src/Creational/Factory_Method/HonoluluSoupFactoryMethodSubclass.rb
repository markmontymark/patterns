

#//HonoluluSoupFactoryMethodSubclass - Two of Two Subclass Factory Methods
require "Creational/Factory_Method/SoupFactoryMethod"
require "common/HonoluluClamChowder"
require "common/HonoluluFishChowder"

class HonoluluSoupFactoryMethodSubclass < SoupFactoryMethod
	def makeBuffetName()
		return "Honolulu Soup Buffet"
	end

	def makeClamChowder()
  		return HonoluluClamChowder.new()
	end

	def makeFishChowder()
		return HonoluluFishChowder.new()
	end

end
