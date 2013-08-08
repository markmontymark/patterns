import copy

class DvdMemento
	def initialize(cache = {})		@cache = cache;
	def setState (toSave) 		@cache = copy.deepcopy(toSave)
	def getState (self)		return @cache

