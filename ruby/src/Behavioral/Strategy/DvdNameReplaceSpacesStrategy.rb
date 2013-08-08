#//DvdNameReplaceSpacesStrategy.java - three of three concrete strategies


require "DvdNameStrategy"

class DvdNameReplaceSpacesStrategy < DvdNameStrategy

	def formatDvdName ( dvdName, charIn) 		return dvdName.replace(' ',charIn) ## should be replace all, not replace one char

