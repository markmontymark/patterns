

# AbstractSpoon- One of Two Prototypes

import copy

class AbstractSpoon

	def initialize()
		raise Exception("Can't instantiate abstract class, AbstractSpoon")

	def setSpoonName(spoonName) 		@spoonName = spoonName

	def getSpoonName(self) 		return @spoonName

	def clone(self) 		return copy.deepcopy(self)

