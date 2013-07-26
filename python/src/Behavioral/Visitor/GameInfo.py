#//GameInfo.java - three of three concrete Visitees
from AbstractTitleInfo import AbstractTitleInfo

class GameInfo(AbstractTitleInfo):
	def __init__(self,titleName) :
		super(GameInfo,self).__init__(titleName)

	def accept(self,titleBlurbVisitor) :
		 titleBlurbVisitor.visit(self)
