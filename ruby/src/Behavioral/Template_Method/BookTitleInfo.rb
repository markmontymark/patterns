
#//BookTitleInfo - two of three concrete templates

require "Behavioral/Template_Method/TitleInfo"

class BookTitleInfo < TitleInfo

	def initialize(titleName,author)
 		setTitleName(titleName)
		setAuthor(author)
	end

	def setAuthor (a)
 		@author = a
	end

	def getAuthor ()
 		return @author
	end

	def getTitleBlurb ()
		return "Book: {0}, Author: {1}".format( getTitleName() , getAuthor() )
	end
end
