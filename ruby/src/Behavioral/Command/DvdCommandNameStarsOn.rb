#//DvdCommandNameStarsOn - one of two Concrete Commands

from CommandAbstract import CommandAbstract

class DvdCommandNameStarsOn(CommandAbstract) :

	def initialize(dvdName) :
		self.dvdName = dvdName

	def execute(self) : 
		self.dvdName.setNameStarsOn()
