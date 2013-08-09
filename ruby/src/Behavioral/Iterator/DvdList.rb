

#//DvdList- the Concrete Aggregate (with a Concrete Iterator inner class)

require "Behavioral/Iterator/DvdListIterator"

class DvdList

	attr_accessor :titleCount


	def initialize( titles = nil)
 		@iterator = nil
		@titleCount = 0
		@arraySize = 0
		if titles == nil
 			@titles = []
		else
 			@titles = titles
		end
	end
		
	def push(title)
 		@titles.push(title)
		@titleCount += 1
	end

	##
	## doesn't handle multiple removal of same title N times, only removes first
	##
	def remove(title)
 		founds = []
		(@titles.length-1).downto(0).each { |i|
 			if @titles[i] == title
 				founds.push(i)
			end
		}

		if founds.length > 0
			for i in founds
 				@titleCount -= 1
				@titles.delete_at(i)
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


