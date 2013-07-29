import copy

class DvdMemento:
	def __init__(self,cache = {}):
		self.cache = cache;
	def setState (self,toSave) :
		self.cache = copy.deepcopy(toSave)
	def getState (self):
		return self.cache

