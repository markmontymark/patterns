

#/HonoluluSoupBuffetBuilder - Two of Two Builder Subclasses

from SoupBuffetBuilder import SoupBuffetBuilder
from common.HonoluluClamChowder import HonoluluClamChowder
from common.HonoluluFishChowder import HonoluluFishChowder

class HonoluluSoupBuffetBuilder(SoupBuffetBuilder):
	def __init__(self):pass
	def buildClamChowder(self)   : 
		self.soupBuffet.clamChowder = HonoluluClamChowder()
	def buildFishChowder(self)   : 
		self.soupBuffet.fishChowder = HonoluluFishChowder()
	def setSoupBuffetName(self) : 
		self.soupBuffet.soupBuffetName = "Honolulu Soup Buffet"
