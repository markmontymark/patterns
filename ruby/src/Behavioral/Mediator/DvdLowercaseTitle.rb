

#//DvdLowercaseTitle- One of Two Concrete Colleagues or Mediatees

require "Behavioral/Mediator/DvdTitle"

class DvdLowercaseTitle < DvdTitle

	attr_accessor :lowercasetitle, :title

	def initialize( title, dvdMediator)
		@LowercaseTitle = nil
		if title.is_a? DvdTitle
			setTitle( title.getTitle() )
		else 
			setTitle(title)
		end
		resetTitle()
		@dvdMediator = dvdMediator
		@dvdMediator.setLowercase(self)
	end

	def resetTitle (title = nil)
 		if title
			setTitle(title)
		end
		setLowercaseTitle(getTitle().downcase())
	end

	def setSuperTitleLowercase()
 		setTitle(getLowercaseTitle())
		@dvdMediator.changeTitle(self)
	end

	def getLowercaseTitle()
 		return @lowercasetitle
	end

	def setLowercaseTitle(aLowercaseTitle)
 		@lowercasetitle = aLowercaseTitle
	end

end
