
#//HonoluluConcreteSoupFactory - Two of Two concrete factories extending the abstract factory

from AbstractSoupFactory import AbstractSoupFactory
from common.HonoluluClamChowder import HonoluluClamChowder
from common.HonoluluFishChowder import HonoluluFishChowder

class HonoluluConcreteSoupFactory(AbstractSoupFactory) :
	def initialize()
		self.factoryLocation = "Honolulu"

	def makeClamChowder(self) : 
		return HonoluluClamChowder()

	def makeFishChowder(self) : 
		return HonoluluFishChowder()
