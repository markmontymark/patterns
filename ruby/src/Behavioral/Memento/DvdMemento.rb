import copy

class DvdMemento:
	def initialize(cache = {}):
		self.cache = cache;
	def setState (self,toSave) :
		self.cache = copy.deepcopy(toSave)
	def getState (self):
		return self.cache

