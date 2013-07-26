#//DvdStateNameExclaim.java - one of two Concrete States

from DvdStateName import DvdStateName

class DvdStateNameExclaim(DvdStateName):
	def showName (self, ctx, name):
		retval = name.replace(' ','!',1)
		print "made switch back to stars"
		ctx.setDvdStateName(DvdStateNameStars())
		return retval

from DvdStateNameStars import DvdStateNameStars
