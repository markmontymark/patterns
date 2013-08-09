# //DvdNameTheAtEndStrategy - two of three concrete strategies


#require "Behavioral/Strategy/DvdNameStrategy"

class DvdNameTheAtEndStrategy < DvdNameStrategy

	def initialize
	end

	def formatDvdName (dvdName,charIn)
		dvdName.match /(The) /i
		if $1
			return "#{dvdName[4..(dvdName.length)]}, #{$1}"
		end
		return dvdName
	end
end

