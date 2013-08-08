

#//AbstractFork - Two of Two Prototypes

import copy

class AbstractFork

	def initialize()
		raise Exception("Can't instantiate abstract class, AbstractFork")

	def setForkName(forkName) 		@forkName = forkName

	def getForkName(self) 		return @forkName

	def clone(self) 		return copy.deepcopy(self)

