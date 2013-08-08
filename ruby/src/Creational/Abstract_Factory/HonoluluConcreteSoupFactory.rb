
#//HonoluluConcreteSoupFactory - Two of Two concrete factories extending the abstract factory

require "AbstractSoupFactory"
from common.HonoluluClamChowder import HonoluluClamChowder
from common.HonoluluFishChowder import HonoluluFishChowder

class HonoluluConcreteSoupFactory < AbstractSoupFactory
	def initialize()
		@factoryLocation = "Honolulu"

	def makeClamChowder(self) 		return HonoluluClamChowder()

	def makeFishChowder(self) 		return HonoluluFishChowder()
