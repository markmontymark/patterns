

#/HonoluluSoupBuffetBuilder - Two of Two Builder Subclasses

require "SoupBuffetBuilder"
from common.HonoluluClamChowder import HonoluluClamChowder
from common.HonoluluFishChowder import HonoluluFishChowder

class HonoluluSoupBuffetBuilder < SoupBuffetBuilder
	def initialize()pass
	def buildClamChowder(self)   		@soupBuffet.clamChowder = HonoluluClamChowder()
	def buildFishChowder(self)   		@soupBuffet.fishChowder = HonoluluFishChowder()
	def setSoupBuffetName(self) 		@soupBuffet.soupBuffetName = "Honolulu Soup Buffet"
