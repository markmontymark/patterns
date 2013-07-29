

#//DvdListIterator
from IteratorInterface import IteratorInterface 

class DvdListIterator(IteratorInterface):

	def __init__(self,list=None):
		self.currentPosition = 0
		if list is None :
			self.list = []
		else :
			self.list = list
			
	def first(self) : 
		self.currentPosition = 0
			 
	def next(self) :
		if self.currentPosition < self.list.titleCount:
			self.currentPosition += 1 
			 
	def isDone(self) : 
		return self.currentPosition >= self.list.titleCount
			 
	def currentItem(self) : 
		return self.list.titles[ self.currentPosition ]
