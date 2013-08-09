
#//DvdUpcaseTitle - Two of Two Concrete Colleagues or Mediatees

require "Behavioral/Mediator/DvdTitle"

class DvdUppercaseTitle < DvdTitle

	attr_accessor :uppercasetitle, :title

	def initialize(title, dvdMediator)
		@uppercasetitle = nil
		if title.is_a? DvdTitle
			setTitle( title.getTitle() )
		else 
			setTitle( title )
		end
		resetTitle()
		@dvdMediator = dvdMediator
		@dvdMediator.setUpcase(self)
	end

	def resetTitle(title = nil )
		if title
 			setTitle(title) 
		end
		setUpcaseTitle(getTitle().upcase())
	end

	def setSuperTitleUpcase()
 		setTitle(getUpcaseTitle())
		@dvdMediator.changeTitle(self)
	end

	def getUpcaseTitle()
 		return @uppercasetitle
	end

	def setUpcaseTitle (upcaseTitle)
 		@uppercasetitle = upcaseTitle
	end

end
