
#//BookTitleInfo - two of three concrete templates

require "TitleInfo"

class BookTitleInfo < TitleInfo

	author = None

	def initialize(titleName,author) 		@setTitleName(titleName)
		@setAuthor(author)

	def setAuthor (a) 		@author = a

	def getAuthor (self) 		return @author

	def getTitleBlurb (self)		return "Book: {0}, Author: {1}".format( @getTitleName() , @getAuthor() )
