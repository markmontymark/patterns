#//DvdNameReplaceSpacesStrategy.java - three of three concrete strategies


from DvdNameStrategy import DvdNameStrategy

class DvdNameReplaceSpacesStrategy (DvdNameStrategy) :

	def formatDvdName (self, dvdName, charIn) :
		return dvdName.replace(' ',charIn) ## should be replace all, not replace one char

