#//DvdRelease - a helper class

class DvdRelease

		def initialize(serialNumber, dvdName, dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay)
 			@serialNumber = serialNumber
			@dvdName = dvdName
			@dvdReleaseYear = dvdReleaseYear
			@dvdReleaseMonth = dvdReleaseMonth
			@dvdReleaseDay = dvdReleaseDay
		end

		def __str__()
			return '"serialNumber":"{0}","dvdName":"{1}","dvdReleaseYear":{2},"dvdReleaseMonth":{3},"dvdReleaseDay":{4}'.format(@serialNumber, @dvdName, @dvdReleaseYear, @dvdReleaseMonth, @dvdReleaseDay)
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
