
#//BookTitleInfo.java - two of three concrete templates

define ['Behavioral/Template_Method/TitleInfo'
],(
TitleInfo
) ->
	class BookTitleInfo extends TitleInfo
		author : null
		constructor : (titleName,author) ->
			@setTitleName titleName
			@setAuthor author

		setAuthor : (a) -> @author = a
		getAuthor : -> @author
		getTitleBlurb : -> "Book: " + @getTitleName() + ", Author: " + @getAuthor()
