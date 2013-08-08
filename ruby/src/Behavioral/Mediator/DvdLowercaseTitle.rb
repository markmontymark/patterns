

#//DvdLowercaseTitle- One of Two Concrete Colleagues or Mediatees

require "DvdTitle"

class DvdLowercaseTitle < DvdTitle
	LowercaseTitle = None
	dvdMediator = None

	def initialize( title, dvdMediator) 		@setTitle( title.getTitle() if isinstance(title, DvdTitle)  else title)
		@resetTitle()
		@dvdMediator = dvdMediator
		@dvdMediator.setLowercase(self)

	def resetTitle (title = None) 		if title			@setTitle(title)
		@setLowercaseTitle(@getTitle().lower())

	def setSuperTitleLowercase(self) 		@setTitle(@getLowercaseTitle())
		@dvdMediator.changeTitle(self)

	def getLowercaseTitle(self) 		return @LowercaseTitle

	def setLowercaseTitle(aLowercaseTitle) 		@LowercaseTitle = aLowercaseTitle
