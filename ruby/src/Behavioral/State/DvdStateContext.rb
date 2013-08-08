# //DvdStateContext.java - the Context

require "DvdStateName"
require "DvdStateNameStars"

class DvdStateContext

	dvdStateName = None

	def initialize() 
		@dvdStateName = DvdStateNameStars()  # start with stars

	def setDvdStateName (dvdStateNameIn)		@dvdStateName = dvdStateNameIn

	def showName (nameIn)		return @dvdStateName.showName(nameIn)
