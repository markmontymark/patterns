
#//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees

require "DvdTitle"

class DvdUpcaseTitle < DvdTitle

	upcaseTitle = None
	dvdMediator = None

	def initialize(title, dvdMediator) 		@setTitle( title.getTitle() if isinstance(title,DvdTitle) else title )
		@resetTitle()
		@dvdMediator = dvdMediator
		@dvdMediator.setUpcase(self)

	def resetTitle(title = None )		if title 			@setTitle(title) 
		@setUpcaseTitle(@getTitle().upper())

	def setSuperTitleUpcase(self) 		@setTitle(@getUpcaseTitle())
		@dvdMediator.changeTitle(self)

	def getUpcaseTitle(self) 		return @upcaseTitle

	def setUpcaseTitle (upcaseTitle) 		@upcaseTitle = upcaseTitle
