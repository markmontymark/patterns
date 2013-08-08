

#//DvdList- the Concrete Aggregate (with a Concrete Iterator inner class)

from DvdListIterator import DvdListIterator

class DvdList:

	titles = []
	titleCount = 0
	arraySize = 0

	def initialize( titles = None) :
		self.iterator = None
		if titles == None :
			self.titles = []
		else :
			self.titles = titles
		
	def append(self,title) :
		self.titles.append(title)
		self.titleCount += 1

	##
	## doesn't handle multiple removal of same title N times, only removes first
	##
	def remove(self,title) :
		founds = []
		for i in reversed(range((len(self.titles)-1))) :
			if self.titles[i] == title :
				founds.append(i)

		if len(founds) > 0:
			for i in founds :
				self.titleCount -= 1
				del self.titles[i]

	def createIterator(self)  :
		if self.iterator:
			return self.iterator 
		self.iterator = DvdListIterator(self)
		return self.iterator


