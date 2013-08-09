#//DvdRelease - a helper class

class DvdRelease

		attr_accessor :serialNumber, :dvdName, :dvdReleaseYear, :dvdReleaseMonth, :dvdReleaseDay

		def initialize(serialNumber, dvdName, dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay)
 			@serialNumber = serialNumber
			@dvdName = dvdName
			@dvdReleaseYear = dvdReleaseYear
			@dvdReleaseMonth = dvdReleaseMonth
			@dvdReleaseDay = dvdReleaseDay
		end

		def to_s()
			return "\"serialNumber\":\"#{@serialNumber}\",\"dvdName\":\"#{@dvdName}\",\"dvdReleaseYear\":#{@dvdReleaseYear},\"dvdReleaseMonth\":#{@dvdReleaseMonth},\"dvdReleaseDay\":#{@dvdReleaseDay}"
		end


		def updateDvdRelease (serialNumber, dvdName, dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay)
 			@serialNumber = serialNumber
			@dvdName = dvdName
			@dvdReleaseYear = dvdReleaseYear
			@dvdReleaseMonth = dvdReleaseMonth
			@dvdReleaseDay = dvdReleaseDay
		end


		def updateDvdReleaseDate (dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay)
 			@dvdReleaseYear = dvdReleaseYear
			@dvdReleaseMonth = dvdReleaseMonth
			@dvdReleaseDay = dvdReleaseDay
		end

end
