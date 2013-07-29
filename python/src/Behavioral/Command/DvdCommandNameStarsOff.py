#//DvdCommandNameStarsOff - two of two Concrete Commands

from CommandAbstract import CommandAbstract

class DvdCommandNameStarsOff(CommandAbstract) :

	def __init__(self,dvdName) :
		self.dvdName = dvdName

	def execute(self) : 
		self.dvdName.setNameStarsOff()
