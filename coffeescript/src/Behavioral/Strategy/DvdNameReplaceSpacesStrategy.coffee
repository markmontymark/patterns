#//DvdNameReplaceSpacesStrategy.java - three of three concrete strategies


define ['Behavioral/Strategy/DvdNameStrategy'
], (
DvdNameStrategy
) ->

	class DvdNameReplaceSpacesStrategy extends DvdNameStrategy
		formatDvdName : (dvdName, charIn) -> dvdName.replace(new RegExp(' ', 'gm'),charIn)

