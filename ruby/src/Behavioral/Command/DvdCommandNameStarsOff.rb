#//DvdCommandNameStarsOff - two of two Concrete Commands

require "Behavioral/Command/CommandAbstract"

class DvdCommandNameStarsOff < CommandAbstract

	def initialize(dvdName)
 		@dvdName = dvdName
	end

	def execute()
 		@dvdName.setNameStarsOff()
	end
end
