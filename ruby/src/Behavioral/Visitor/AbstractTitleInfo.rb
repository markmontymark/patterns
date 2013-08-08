#//AbstractTitleInfo.java - the abstract Visitee

class AbstractTitleInfo(object):

	titleName = None

	def initialize(titleName):
		self.setTitleName(titleName)

	def setTitleName (self,titleNameIn) :
		self.titleName = titleNameIn

	def getTitleName (self) : 
		return self.titleName

	def accept (self,titleBlurbVisitor) :
		raise Exception("Unimplemented method, AbstractTitleInfo.accept")

