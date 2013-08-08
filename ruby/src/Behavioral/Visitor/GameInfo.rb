#//GameInfo - three of three concrete Visitees
require "Behavioral/Visitor/AbstractTitleInfo"

class GameInfo < AbstractTitleInfo
	def initialize(titleName)
 		super(titleName)
	end

	def accept(titleBlurbVisitor)
 		 titleBlurbVisitor.visit(self)
	end
end
