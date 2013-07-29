

#//DvdList- the Concrete Aggregate (with a Concrete Iterator inner class)

from DvdListIterator import DvdListIterator

class DvdList:

	titles = []
	titleCount = 0
	arraySize = 0

	def __init__(self, titles = []) :
		self.iterator = None
		self.titles = titles
		
	def append(self,title) :
		self.titles.append(title)
		self.titleCount += 1

	##
	## doesn't handle multiple removal of same title N times, only removes first
	##
	def remove(self,title) :
		founds = (i for t,i in self.titles if title == t)
		if founds.length > 0:
			for i in founds by -1:
				self.titleCount--
			self.titles.splice i,1

	def createIterator(self)  :
		if self.iterator:
			return self.iterator 
		return (self.iterator = DvdListIterator(self))


