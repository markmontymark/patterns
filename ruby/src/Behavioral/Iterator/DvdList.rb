

#//DvdList- the Concrete Aggregate (with a Concrete Iterator inner class)

require "Behavioral/Iterator/DvdListIterator"

class DvdList


	def initialize( titles = None)
 		@iterator = None
		@titleCount = 0
		@arraySize = 0
		if titles == None
 			@titles = []
		else
 			@titles = titles
		end
	end
		
	def append(title)
 		@titles.append(title)
		@titleCount += 1
	end

	##
	## doesn't handle multiple removal of same title N times, only removes first
	##
	def remove(title)
 		founds = []
		for i in reversed(range((len(@titles)-1)))
 			if @titles[i] == title
 				founds.append(i)
			end
		end

		if len(founds) > 0
			for i in founds
 				@titleCount -= 1
				del @titles[i]
			end
		end
	end

	def createIterator()
  		if @iterator
			return @iterator 
		end
		@iterator = DvdListIterator.new(self)
		return @iterator
	end
end


