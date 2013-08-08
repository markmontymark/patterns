#//DvdStateNameExclaim.java - one of two Concrete States

require "DvdStateName"

class DvdStateNameExclaim < DvdStateName
	def showName ( ctx, name)		retval = name.replace(' ','!',1)
		ctx.setDvdStateName(DvdStateNameStars())
		return retval

require "DvdStateNameStars"
