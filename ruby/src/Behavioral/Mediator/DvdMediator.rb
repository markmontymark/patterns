
#//DvdMediator- The Mediator
#require "Behavioral/Mediator/DvdLowercaseTitle"
#require "Behavioral/Mediator/DvdUpcaseTitle"

class DvdMediator

	def setUpcase(dvdUpcaseTitle)
 		@dvdUpcaseTitle = dvdUpcaseTitle
	end

	def setLowercase(dvdLowercaseTitle)
 		@dvdLowercaseTitle = dvdLowercaseTitle
	end

	def changeTitle(title)
		if title.is_a? DvdUppercaseTitle
 			@dvdLowercaseTitle.resetTitle(@dvdUpcaseTitle.getTitle())
		elsif title.is_a? DvdLowercaseTitle
 			@dvdUpcaseTitle.resetTitle(@dvdLowercaseTitle.getTitle())
		end
	end

end
