

#//DvdList- the Concrete Aggregate (with a Concrete Iterator inner class)

require "DvdListIterator"

class DvdList

	titles = []
	titleCount = 0
	arraySize = 0

	def initialize( titles = None) 		@iterator = None
		if titles == None 			@titles = []
		else 			@titles = titles
		
	def append(title) 		@titles.append(title)
		@titleCount += 1

	##
	## doesn't handle multiple removal of same title N times, only removes first
	##
	def remove(title) 		founds = []
		for i in reversed(range((len(@titles)-1))) 			if @titles[i] == title 				founds.append(i)

		if len(founds) > 0			for i in founds 				@titleCount -= 1
				del @titles[i]

	def createIterator(self)  		if @iterator			return @iterator 
		@iterator = DvdListIterator(self)
		return @iterator


