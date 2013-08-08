

#//DvdListIterator
require "Behavioral/Iterator/IteratorInterface"

class DvdListIterator < IteratorInterface

	def initialize(list=None)
		@currentPosition = 0
		if list is None
 			@list = []
		else
 			@list = list
		end
	end
			
	def first()
 		@currentPosition = 0
	end
			 
	def next()
 		if @currentPosition < @list.titleCount
			@currentPosition += 1 
		end
	end
			 
	def isDone()
 		return @currentPosition >= @list.titleCount
	end
			 
	def currentItem()
 		return @list.titles[ @currentPosition ]
	end
end
