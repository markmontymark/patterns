#//AbstractTitleInfo.java - the abstract Visitee

define [] ,() ->
	class AbstractTitleInfo
		titleName   : null
		setTitleName : (titleNameIn) -> @titleName = titleNameIn
		getTitleName : -> @titleName
		accept :(titleBlurbVisitor) -> throw "Unimplemented method, AbstractTitleInfo.accept"

