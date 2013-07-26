# //BookInfo.java - one of three concrete Visitees
from AbstractTitleInfo import AbstractTitleInfo

class BookInfo (AbstractTitleInfo) :

	author = None

	def __init__(self,titleName,author) :
		super(BookInfo,self).__init__(titleName)
		self.author = author

	def accept (self,titleBlurbVisitor) :
		titleBlurbVisitor.visit(self)

