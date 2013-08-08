# //DvdStateContext.java - the Context

from DvdStateName import DvdStateName
from DvdStateNameStars import DvdStateNameStars

class DvdStateContext:

	dvdStateName = None

	def initialize() 
		self.dvdStateName = DvdStateNameStars()  # start with stars

	def setDvdStateName (self,dvdStateNameIn):
		self.dvdStateName = dvdStateNameIn

	def showName (self,nameIn):
		return self.dvdStateName.showName(self,nameIn)
