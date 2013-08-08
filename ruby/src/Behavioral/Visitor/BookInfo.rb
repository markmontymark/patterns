# //BookInfo.java - one of three concrete Visitees
require "AbstractTitleInfo"

class BookInfo < AbstractTitleInfo

	author = None

	def initialize(titleName,author) 		super(BookInfo,self).__init__(titleName)
		@author = author

	def accept (titleBlurbVisitor) 		titleBlurbVisitor.visit(self)

