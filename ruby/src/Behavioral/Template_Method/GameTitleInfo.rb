#//GameTitleInfo - three of three concrete templates

require "Behavioral/Template_Method/TitleInfo"

class GameTitleInfo < TitleInfo
	def initialize(titleName)
		setTitleName(titleName)
	end

	def getTitleBlurb ()
		return "Game: {0}".format( getTitleName() )
	end

end
