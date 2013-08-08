

#//DvdLowercaseTitle- One of Two Concrete Colleagues or Mediatees

require "Behavioral/Mediator/DvdTitle"

class DvdLowercaseTitle < DvdTitle

	def initialize( title, dvdMediator)
		@LowercaseTitle = None
		if isinstance(title, DvdTitle)  
			setTitle( title.getTitle() )
		else 
			setTitle(title)
		end
		resetTitle()
		@dvdMediator = dvdMediator
		@dvdMediator.setLowercase(self)
	end

	def resetTitle (title = None)
 		if title
			setTitle(title)
		end
		setLowercaseTitle(getTitle().lower())
	end

	def setSuperTitleLowercase()
 		setTitle(getLowercaseTitle())
		@dvdMediator.changeTitle(self)
	end

	def getLowercaseTitle()
 		return @LowercaseTitle
	end

	def setLowercaseTitle(aLowercaseTitle)
 		@LowercaseTitle = aLowercaseTitle
	end

end
