# DvdStateNameStars- two of two Concrete States

require "Behavioral/State/DvdStateName"
require "Behavioral/State/DvdStateNameExclaim"

class DvdStateNameStars < DvdStateName

	def initialize(starCount = 0)
		@starCount = starCount
	end
	
	def showName (ctx, name)
		@starCount += 1
		retval = name.replace(' ','*', @starCount)  #// show stars twice, switch to exclamation point
		if @starCount > 1
 			ctx.setDvdStateName( DvdStateNameExclaim.new )
		end
		return retval;
	end
end

