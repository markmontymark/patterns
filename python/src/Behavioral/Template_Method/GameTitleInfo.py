#//GameTitleInfo.java - three of three concrete templates

define ['Behavioral/Template_Method/TitleInfo'
],(
TitleInfo
) ->
	class GameTitleInfo extends TitleInfo
		constructor : (titleName) ->
			@setTitleName titleName

		getTitleBlurb : -> "Game: " + @getTitleName()
