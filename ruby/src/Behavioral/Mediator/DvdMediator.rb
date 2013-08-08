
#//DvdMediator- The Mediator
require "DvdLowercaseTitle"
require "DvdUpcaseTitle"

class DvdMediator

	dvdUpcaseTitle = None
	dvdLowercaseTitle = None

	def setUpcase(dvdUpcaseTitle) 		@dvdUpcaseTitle = dvdUpcaseTitle

	def setLowercase(dvdLowercaseTitle) 		@dvdLowercaseTitle = dvdLowercaseTitle

	def changeTitle(title)		if isinstance(title, DvdUpcaseTitle) 			@dvdLowercaseTitle.resetTitle(@dvdUpcaseTitle.getTitle())
		elif isinstance(title, DvdLowercaseTitle) 			@dvdUpcaseTitle.resetTitle(@dvdLowercaseTitle.getTitle())
