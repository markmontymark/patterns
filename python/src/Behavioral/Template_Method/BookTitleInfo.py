
#//BookTitleInfo - two of three concrete templates

from TitleInfo import TitleInfo

class BookTitleInfo(TitleInfo):

	author = None

	def __init__(self,titleName,author) :
		self.setTitleName(titleName)
		self.setAuthor(author)

	def setAuthor (self,a) :
		self.author = a

	def getAuthor (self) : 
		return self.author

	def getTitleBlurb (self): 
		return "Book: {0}, Author: {1}".format( self.getTitleName() , self.getAuthor() )
