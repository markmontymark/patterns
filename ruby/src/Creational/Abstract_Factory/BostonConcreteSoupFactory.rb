
#  BostonConcreteSoupFactory  One of Two concrete factories extending the abstract factory

require "AbstractSoupFactory"
from common.BostonClamChowder import BostonClamChowder
from common.BostonFishChowder import BostonFishChowder

class BostonConcreteSoupFactory < AbstractSoupFactory
	def initialize()
		@factoryLocation = "Boston"

	def makeClamChowder(self) 		return BostonClamChowder()

	def makeFishChowder(self) 		return BostonFishChowder()
