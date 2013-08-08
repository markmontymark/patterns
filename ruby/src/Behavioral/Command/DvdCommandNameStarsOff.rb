#//DvdCommandNameStarsOff - two of two Concrete Commands

from CommandAbstract import CommandAbstract

class DvdCommandNameStarsOff(CommandAbstract) :

	def initialize(dvdName) :
		self.dvdName = dvdName

	def execute(self) : 
		self.dvdName.setNameStarsOff()
