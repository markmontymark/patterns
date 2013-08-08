
# //DvdInfo - one of three concrete Visitees
require "Behavioral/Visitor/AbstractTitleInfo"

class DvdInfo < AbstractTitleInfo

	def initialize(titleName,star,region)
		super(titleName)
		@star = star
		@region = region
	end

	def accept (titleBlurbVisitor)
 		titleBlurbVisitor.visit(self)
	end
end

