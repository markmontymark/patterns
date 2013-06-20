#//DvdName.java - the Receiver

define [],() ->

	class DvdName
		titleName : null
		constructor : (@titleName) ->
		setTitleName : (titleNameIn) -> @titleName = titleNameIn
		getTitleName : -> @titleName
		setNameStarsOn : -> @setTitleName(@getTitleName().replace(' ','*'))
		setNameStarsOff : -> @setTitleName(@getTitleName().replace('*',' '))
		toString : -> "DVD: #{@getTitleName()}"
