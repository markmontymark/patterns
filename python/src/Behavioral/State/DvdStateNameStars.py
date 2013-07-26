# DvdStateNameStars- two of two Concrete States


from DvdStateName import DvdStateName

class DvdStateNameStars(DvdStateName):

	starCount = 0

	def __init__(self,starCount = 0):
		self.starCount = starCount
	
	def showName (self,ctx, name):
		self.starCount += 1
		retval = name.replace(' ','*', self.starCount)  #// show stars twice, switch to exclamation point
		if self.starCount > 1 :
			print "made switch to exclaim"
			ctx.setDvdStateName( DvdStateNameExclaim())
		return retval;

from DvdStateNameExclaim import DvdStateNameExclaim
