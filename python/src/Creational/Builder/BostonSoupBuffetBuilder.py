
#/BostonSoupBuffetBuilder - Two of Two Builder Subclasses

from SoupBuffetBuilder import SoupBuffetBuilder
from common.BostonClamChowder import BostonClamChowder
from common.BostonFishChowder import BostonFishChowder

class BostonSoupBuffetBuilder(SoupBuffetBuilder):
	def __init__(self) : pass
	def buildClamChowder(self)   : 
		self.soupBuffet.clamChowder = BostonClamChowder()
	def buildFishChowder(self)   : 
		self.soupBuffet.fishChowder = BostonFishChowder()
	def setSoupBuffetName(self) : 
		self.soupBuffet.soupBuffetName = "Boston Soup Buffet"
