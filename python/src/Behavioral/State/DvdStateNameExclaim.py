#//DvdStateNameExclaim.java - one of two Concrete States

import DvdStateName
import DvdStateNameStars

class DvdStateNameExclaim(DvdStateName):
	def showName (self,ctx, name):
		retval = name.replace(' ','!')
		ctx.setDvdStateName(DvdStateNameStars())
		retval
