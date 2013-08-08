#//AbstractTitleInfo.java - the abstract Visitee

class AbstractTitleInfo < object

	titleName = None

	def initialize(titleName)		@setTitleName(titleName)

	def setTitleName (titleNameIn) 		@titleName = titleNameIn

	def getTitleName (self) 		return @titleName

	def accept (titleBlurbVisitor) 		raise Exception("Unimplemented method, AbstractTitleInfo.accept")

