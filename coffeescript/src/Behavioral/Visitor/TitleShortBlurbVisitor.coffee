


#//TitleShortBlurbVisitor.java - two of two concrete Visitors

define ['Behavioral/Visitor/TitleBlurbVisitor',
'Behavioral/Visitor/BookInfo',
'Behavioral/Visitor/DvdInfo',
'Behavioral/Visitor/GameInfo'
],(
TitleBlurbVisitor,
BookInfo,
DvdInfo,
GameInfo
) ->

	class TitleShortBlurbVisitor extends TitleBlurbVisitor
		visit : (info) ->
			switch
				when info instanceof BookInfo then  @setTitleBlurb("SB-Book: " + info.titleName)
				when info instanceof DvdInfo then  @setTitleBlurb("SB-DVD: " + info.titleName)
				when info instanceof GameInfo then @setTitleBlurb("SB-Game: " + info.titleName)
