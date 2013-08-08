

#//BostonSoupFactoryMethodSubclass - Two of Two Subclass Factory Methods
require "SoupFactoryMethod"
from common.BostonClamChowder import BostonClamChowder
from common.BostonFishChowder import BostonFishChowder

class BostonSoupFactoryMethodSubclass < SoupFactoryMethod

	def makeBuffetName(self)   		return "Boston Soup Buffet"

	def makeClamChowder(self)   		return BostonClamChowder()

	def makeFishChowder(self)   		return BostonFishChowder()
