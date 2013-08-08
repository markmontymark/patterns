#//GameTitleInfo.java - three of three concrete templates

from TitleInfo import TitleInfo

class GameTitleInfo(TitleInfo) :
	def initialize(titleName):
		self.setTitleName(titleName)

	def getTitleBlurb (self): 
		return "Game: {0}".format( self.getTitleName() )
