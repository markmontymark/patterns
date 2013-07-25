#//TitleBlurbVisitor.java - the abstract Visitor
define [],() ->
	class TitleBlurbVisitor
		titleBlurb   : null
		setTitleBlurb : (blurbIn) -> @titleBlurb = blurbIn
		getTitleBlurb : -> @titleBlurb
		visit : (info) -> throw "Unimplemented method TitleBlurbVisitor.visit"
