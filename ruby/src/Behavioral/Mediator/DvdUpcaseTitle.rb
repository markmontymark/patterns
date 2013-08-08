
#//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees

from DvdTitle import DvdTitle

class DvdUpcaseTitle(DvdTitle) :

	upcaseTitle = None
	dvdMediator = None

	def initialize(title, dvdMediator) :
		self.setTitle( title.getTitle() if isinstance(title,DvdTitle) else title )
		self.resetTitle()
		self.dvdMediator = dvdMediator
		self.dvdMediator.setUpcase(self)

	def resetTitle(self,title = None ):
		if title :
			self.setTitle(title) 
		self.setUpcaseTitle(self.getTitle().upper())

	def setSuperTitleUpcase(self) :
		self.setTitle(self.getUpcaseTitle())
		self.dvdMediator.changeTitle(self)

	def getUpcaseTitle(self) :
		return self.upcaseTitle

	def setUpcaseTitle (self,upcaseTitle) : 
		self.upcaseTitle = upcaseTitle
