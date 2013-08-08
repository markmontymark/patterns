
#//DvdMediator- The Mediator
from DvdLowercaseTitle import DvdLowercaseTitle
from DvdUpcaseTitle import DvdUpcaseTitle

class DvdMediator:

	dvdUpcaseTitle = None
	dvdLowercaseTitle = None

	def setUpcase(self,dvdUpcaseTitle) :
		self.dvdUpcaseTitle = dvdUpcaseTitle

	def setLowercase(self,dvdLowercaseTitle) :
		self.dvdLowercaseTitle = dvdLowercaseTitle

	def changeTitle(self,title):
		if isinstance(title, DvdUpcaseTitle) :
			self.dvdLowercaseTitle.resetTitle(self.dvdUpcaseTitle.getTitle())
		elif isinstance(title, DvdLowercaseTitle) :
			self.dvdUpcaseTitle.resetTitle(self.dvdLowercaseTitle.getTitle())
