
# //DvdInfo - one of three concrete Visitees
require "AbstractTitleInfo"

class DvdInfo < AbstractTitleInfo

	star = None
	region  = None

	def initialize(titleName,star,region)		super(DvdInfo,self).__init__(titleName)
		@star = star
		@region = region

	def accept (titleBlurbVisitor) 		titleBlurbVisitor.visit(self)

