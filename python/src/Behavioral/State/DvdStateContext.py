# //DvdStateContext.java - the Context

import DvdStateName
import DvdStateNameStars

class DvdStateContext:
	dvdStateName = null

	def __init__(self): 
		self.dvdStateName = DvdStateNameStars()  # start with stars

	def setDvdStateName (self,dvdStateNameIn):
		self.dvdStateName = dvdStateNameIn

	def showName (self,nameIn):
		self.dvdStateName.showName(nameIn)
