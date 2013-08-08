
#//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees

require "Behavioral/Mediator/DvdTitle"

class DvdUpcaseTitle < DvdTitle

	def initialize(title, dvdMediator)
		@upcaseTitle = None
		if isinstance(title,DvdTitle) 
			setTitle( title.getTitle() )
		else 
			setTitle( title )
		end
		resetTitle()
		@dvdMediator = dvdMediator
		@dvdMediator.setUpcase(self)
	end

	def resetTitle(title = None )
		if title
 			setTitle(title) 
		end
		setUpcaseTitle(getTitle().upper())
	end

	def setSuperTitleUpcase()
 		setTitle(getUpcaseTitle())
		@dvdMediator.changeTitle(self)
	end

	def getUpcaseTitle()
 		return @upcaseTitle
	end

	def setUpcaseTitle (upcaseTitle)
 		@upcaseTitle = upcaseTitle
	end

end
