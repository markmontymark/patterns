# //DvdNameTheAtEndStrategy - two of three concrete strategies


require "Behavioral/Strategy/DvdNameStrategy"

class DvdNameTheAtEndStrategy < DvdNameStrategy

	def formatDvdName (dvdName,charIn)
		if dvdName.startswith('The ')
			return dvdName.substring(4) + ", The"
		elsif dvdName.startswith('THE ' )
			return dvdName.substring(4) + ", THE"
		elsif dvdName.startswith('the ')
			return dvdName.substring(4) + ", the"
		else
			return dvdName
		end
	end
end

