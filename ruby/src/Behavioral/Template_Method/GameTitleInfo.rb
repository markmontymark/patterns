#//GameTitleInfo.java - three of three concrete templates

require "TitleInfo"

class GameTitleInfo < TitleInfo
	def initialize(titleName)		@setTitleName(titleName)

	def getTitleBlurb (self)		return "Game: {0}".format( @getTitleName() )
