
## DvdNameAllCapStrategy - one of three concrete strategies

#require "Behavorial/Strategy/DvdNameStrategy"

class DvdNameAllCapStrategy < DvdNameStrategy

	def initialize
	end

	
	def formatDvdName( dvdName, charIn)
		dvdName.upcase
	end

end
