#//DvdNameReplaceSpacesStrategy - three of three concrete strategies


#require "Behavioral/Strategy/DvdNameStrategy"

class DvdNameReplaceSpacesStrategy < DvdNameStrategy

	def initialize
	end

	def formatDvdName ( dvdName, charIn)
 		return dvdName.gsub(' ',charIn) ## should be replace all, not replace one char
	end
end

