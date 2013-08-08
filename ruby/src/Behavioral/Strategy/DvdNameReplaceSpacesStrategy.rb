#//DvdNameReplaceSpacesStrategy - three of three concrete strategies


require "Behavioral/Strategy/DvdNameStrategy"

class DvdNameReplaceSpacesStrategy < DvdNameStrategy

	def formatDvdName ( dvdName, charIn)
 		return dvdName.replace(' ',charIn) ## should be replace all, not replace one char
	end
end

