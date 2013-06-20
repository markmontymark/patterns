#//GameInfo.java - three of three concrete Visitees
define ['Behavioral/Visitor/AbstractTitleInfo'
],(
AbstractTitleInfo
) ->

	class GameInfo extends AbstractTitleInfo
		constructor : (@titleName) ->
		accept : (titleBlurbVisitor) -> titleBlurbVisitor.visit(@)
