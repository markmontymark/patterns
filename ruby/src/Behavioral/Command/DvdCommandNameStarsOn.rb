#//DvdCommandNameStarsOn - one of two Concrete Commands

require "CommandAbstract"

class DvdCommandNameStarsOn < CommandAbstract

	def initialize(dvdName) 		@dvdName = dvdName

	def execute(self) 		@dvdName.setNameStarsOn()
