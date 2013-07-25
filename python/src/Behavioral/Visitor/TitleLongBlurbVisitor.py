#//TitleLongBlurbVisitor.java - one of two concrete Visitors

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

	class TitleLongBlurbVisitor extends TitleBlurbVisitor
		visit : (info) ->
			switch
				when info instanceof BookInfo then  @setTitleBlurb("LB-Book: " + info.titleName + ", Author: " + info.author)
				when info instanceof DvdInfo then   @setTitleBlurb("LB-DVD: " + info.titleName + ", starring " + info.star + ", encoding region: " + info.region)
				when info instanceof GameInfo then  @setTitleBlurb("LB-Game: " + info.titleName )
