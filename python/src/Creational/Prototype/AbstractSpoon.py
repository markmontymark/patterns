

# AbstractSpoon- One of Two Prototypes

import copy

class AbstractSpoon:

	def __init__(self):
		raise Exception("Can't instantiate abstract class, AbstractSpoon")

	def setSpoonName(self,spoonName) :
		self.spoonName = spoonName

	def getSpoonName(self) : 
		return self.spoonName

	def clone(self) :
		return copy.deepcopy(self)

