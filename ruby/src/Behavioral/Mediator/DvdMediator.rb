
#//DvdMediator- The Mediator
require "Behavioral/Mediator/DvdLowercaseTitle"
require "Behavioral/Mediator/DvdUpcaseTitle"

class DvdMediator

	def setUpcase(dvdUpcaseTitle)
 		@dvdUpcaseTitle = dvdUpcaseTitle
	end

	def setLowercase(dvdLowercaseTitle)
 		@dvdLowercaseTitle = dvdLowercaseTitle
	end

	def changeTitle(title)
		if isinstance(title, DvdUpcaseTitle)
 			@dvdLowercaseTitle.resetTitle(@dvdUpcaseTitle.getTitle())
		elsif isinstance(title, DvdLowercaseTitle)
 			@dvdUpcaseTitle.resetTitle(@dvdLowercaseTitle.getTitle())
		end
	end

end
