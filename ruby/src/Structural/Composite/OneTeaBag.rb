
# - one composite extension - the "leaf"

from TeaBags import TeaBags

class OneTeaBag(TeaBags) :
	def initialize(name): 
		self.name = name

	def countTeaBags(self) : 
		return 1

	def add(self) : 
		return False

	def remove(self) : 
		return False

	def createListIterator(self) :
		return None
