
# //DvdInfo - one of three concrete Visitees
from AbstractTitleInfo import AbstractTitleInfo

class DvdInfo(AbstractTitleInfo):

	star = None
	region  = None

	def initialize(titleName,star,region):
		super(DvdInfo,self).__init__(titleName)
		self.star = star
		self.region = region

	def accept (self,titleBlurbVisitor) :
		titleBlurbVisitor.visit(self)

