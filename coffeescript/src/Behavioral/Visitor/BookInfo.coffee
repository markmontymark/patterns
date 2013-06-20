# //BookInfo.java - one of three concrete Visitees
define ['Behavioral/Visitor/AbstractTitleInfo'
],(
AbstractTitleInfo
) ->

	class BookInfo extends AbstractTitleInfo
		author    : null
		constructor : (@titleName, @author) ->
		accept : (titleBlurbVisitor) -> titleBlurbVisitor.visit(@)

