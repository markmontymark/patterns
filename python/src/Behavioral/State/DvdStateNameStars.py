# DvdStateNameStars- two of two Concrete States

#import DvdStateName,
#import DvdStateNameExclaim

import DvdStateName
#import DvdStateNameExclaim

class DvdStateNameStars(DvdStateName):

	starCount = 0

	def __init__(self,starCount = 0):
		self.starCount = starCount
	
	def showName (self,ctx, name):
		retval = name.replace(' ','*')  #// show stars twice, switch to exclamation point
		if ++self.starCount > 1:
			ctx.setDvdStateName( DvdStateNameExclaim())
		return retval;
