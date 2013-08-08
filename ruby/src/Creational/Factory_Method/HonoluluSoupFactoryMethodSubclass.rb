

#//HonoluluSoupFactoryMethodSubclass - Two of Two Subclass Factory Methods
require "SoupFactoryMethod"
from common.HonoluluClamChowder import HonoluluClamChowder
from common.HonoluluFishChowder import HonoluluFishChowder

class HonoluluSoupFactoryMethodSubclass < SoupFactoryMethod
	def makeBuffetName(self)   		return "Honolulu Soup Buffet"

	def makeClamChowder(self)  		return HonoluluClamChowder()

	def makeFishChowder(self)   		return HonoluluFishChowder()
