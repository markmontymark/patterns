#//DvdCommandNameStarsOn - one of two Concrete Commands

require "Behavioral/Command/CommandAbstract"

class DvdCommandNameStarsOn < CommandAbstract

	def initialize(dvdName)
 		@dvdName = dvdName
	end

	def execute()
 		@dvdName.setNameStarsOn()
	end

end
