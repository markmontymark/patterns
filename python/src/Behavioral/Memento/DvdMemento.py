class DvdMemento:
	def __init__(self,cache = {}):
		self.cache = cache;
	def setState (self,toSave) :
		self.cache = toSave.clone()
	def getState (self):
		return self.cache

