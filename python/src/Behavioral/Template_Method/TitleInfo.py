# #//TitleInfo.java - the abstract Template
define [],() ->
	class TitleInfo
		titleName   : null

		#//the "template method" - 
		#//  calls the concrete class methods, is not overridden
		ProcessTitleInfo : ->
			titleInfo = []
			titleInfo.push @getTitleBlurb()
			titleInfo.push @getDvdEncodingRegionInfo()
			titleInfo.toString()

		#//the following 2 methods are "concrete abstract class methods"
		setTitleName : (titleNameIn) -> @titleName = titleNameIn
		getTitleName : -> @titleName

		#//this is a "primitive operation", 
		#//  and must be overridden in the concrete templates
		getTitleBlurb : -> throw "Unimplemented method TitleInfo.getTitleBlurb"

		#//this is a "hook operation", which may be overridden, 
		#//hook operations usually do nothing if not overridden 
		getDvdEncodingRegionInfo : -> ' '
