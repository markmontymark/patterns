

#//HonoluluSoupFactoryMethodSubclass - Two of Two Subclass Factory Methods
from SoupFactoryMethod import SoupFactoryMethod
from common.HonoluluClamChowder import HonoluluClamChowder
from common.HonoluluFishChowder import HonoluluFishChowder

class HonoluluSoupFactoryMethodSubclass(SoupFactoryMethod):
	def makeBuffetName(self)   : 
		return "Honolulu Soup Buffet"

	def makeClamChowder(self)  : 
		return HonoluluClamChowder()

	def makeFishChowder(self)   : 
		return HonoluluFishChowder()
