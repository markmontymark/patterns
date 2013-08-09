# //DvdStateContext - the Context

require "Behavioral/State/DvdStateName"
require "Behavioral/State/DvdStateNameStars"

class DvdStateContext

	def initialize() 
		@dvdStateName = DvdStateNameStars.new  # start with stars
	end

	def setDvdStateName (dvdStateNameIn)
		@dvdStateName = dvdStateNameIn
	end

	def showName (nameIn)
		return @dvdStateName.showName(self,nameIn)
	end
end
