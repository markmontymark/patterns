
#/BostonSoupBuffetBuilder - Two of Two Builder Subclasses

require "SoupBuffetBuilder"
from common.BostonClamChowder import BostonClamChowder
from common.BostonFishChowder import BostonFishChowder

class BostonSoupBuffetBuilder < SoupBuffetBuilder
	def initialize() pass
	def buildClamChowder(self)   		@soupBuffet.clamChowder = BostonClamChowder()
	def buildFishChowder(self)   		@soupBuffet.fishChowder = BostonFishChowder()
	def setSoupBuffetName(self) 		@soupBuffet.soupBuffetName = "Boston Soup Buffet"
