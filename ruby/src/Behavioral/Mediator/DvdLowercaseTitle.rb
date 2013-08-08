

#//DvdLowercaseTitle- One of Two Concrete Colleagues or Mediatees

from DvdTitle import DvdTitle

class DvdLowercaseTitle(DvdTitle):
	LowercaseTitle = None
	dvdMediator = None

	def initialize( title, dvdMediator) :
		self.setTitle( title.getTitle() if isinstance(title, DvdTitle)  else title)
		self.resetTitle()
		self.dvdMediator = dvdMediator
		self.dvdMediator.setLowercase(self)

	def resetTitle (self,title = None) :
		if title:
			self.setTitle(title)
		self.setLowercaseTitle(self.getTitle().lower())

	def setSuperTitleLowercase(self) :
		self.setTitle(self.getLowercaseTitle())
		self.dvdMediator.changeTitle(self)

	def getLowercaseTitle(self) :
		return self.LowercaseTitle

	def setLowercaseTitle(self,aLowercaseTitle) :
		self.LowercaseTitle = aLowercaseTitle
