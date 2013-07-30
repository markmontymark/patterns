

#//AbstractFork - Two of Two Prototypes

import copy

class AbstractFork:

	def __init__(self):
		raise Exception("Can't instantiate abstract class, AbstractFork")

	def setForkName(self,forkName) :
		self.forkName = forkName

	def getForkName(self) : 
		return self.forkName

	def clone(self) :
		return copy.deepcopy(self)

