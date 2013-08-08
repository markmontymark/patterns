# DvdStateNameStars- two of two Concrete States


require "DvdStateName"

class DvdStateNameStars < DvdStateName

	starCount = 0

	def initialize(starCount = 0)		@starCount = starCount
	
	def showName (ctx, name)		@starCount += 1
		retval = name.replace(' ','*', @starCount)  #// show stars twice, switch to exclamation point
		if @starCount > 1 			ctx.setDvdStateName( DvdStateNameExclaim())
		return retval;

require "DvdStateNameExclaim"
