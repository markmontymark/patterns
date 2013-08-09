# //BookInfo - one of three concrete Visitees
#require "AbstractTitleInfo"

class BookInfo < AbstractTitleInfo

	attr_accessor :author

	def initialize(titleName,author)
 		super(titleName)
		@author = author
	end

	def accept (titleBlurbVisitor)
 		titleBlurbVisitor.visit(self)
	end

end

