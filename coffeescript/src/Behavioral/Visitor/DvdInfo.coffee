
# //BookInfo.java - one of three concrete Visitees
define ['Behavioral/Visitor/AbstractTitleInfo'
],(
AbstractTitleInfo
) ->

	class DvdInfo extends AbstractTitleInfo
		star: null
		region : null
		constructor : (@titleName, @star, @region) ->
		accept : (titleBlurbVisitor) -> titleBlurbVisitor.visit(@)

