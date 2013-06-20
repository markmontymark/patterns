


#//DvdNameAllCapStrategy.java - one of three concrete strategies


#//DvdNameReplaceSpacesStrategy.java - three of three concrete strategies


define ['Behavioral/Strategy/DvdNameStrategy'
], (
DvdNameStrategy
) ->

	class DvdNameAllCapStrategy extends DvdNameStrategy
		formatDvdName : (dvdName, charIn) -> dvdName.toUpperCase()
