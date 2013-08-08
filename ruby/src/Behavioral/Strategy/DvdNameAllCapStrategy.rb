
## DvdNameAllCapStrategy - one of three concrete strategies

require "Behavorial/Strategy/DvdNameStrategy"

class DvdNameAllCapStrategy < DvdNameStrategy
	
	def formatDvdName( dvdName, charIn)
		return dvdName.upper()
	end

end
