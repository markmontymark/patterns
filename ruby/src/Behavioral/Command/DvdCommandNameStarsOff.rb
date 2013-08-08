#//DvdCommandNameStarsOff - two of two Concrete Commands

require "CommandAbstract"

class DvdCommandNameStarsOff < CommandAbstract

	def initialize(dvdName) 		@dvdName = dvdName

	def execute(self) 		@dvdName.setNameStarsOff()
