

#//DvdListIterator
require "IteratorInterface"

class DvdListIterator < IteratorInterface

	def initialize(list=None)		@currentPosition = 0
		if list is None 			@list = []
		else 			@list = list
			
	def first(self) 		@currentPosition = 0
			 
	def next(self) 		if @currentPosition < @list.titleCount			@currentPosition += 1 
			 
	def isDone(self) 		return @currentPosition >= @list.titleCount
			 
	def currentItem(self) 		return @list.titles[ @currentPosition ]
