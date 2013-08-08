#//DvdRelease - a helper class

class DvdRelease

		def initialize(serialNumber, dvdName, dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) 			@serialNumber = serialNumber
			@dvdName = dvdName
			@dvdReleaseYear = dvdReleaseYear
			@dvdReleaseMonth = dvdReleaseMonth
			@dvdReleaseDay = dvdReleaseDay

		def __str__(self)			return '"serialNumber":"{0}","dvdName":"{1}","dvdReleaseYear":{2},"dvdReleaseMonth":{3},"dvdReleaseDay":{4}'.format(@serialNumber, @dvdName, @dvdReleaseYear, @dvdReleaseMonth, @dvdReleaseDay)


		def updateDvdRelease (serialNumber, dvdName, dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) 			@serialNumber = serialNumber
			@dvdName = dvdName
			@dvdReleaseYear = dvdReleaseYear
			@dvdReleaseMonth = dvdReleaseMonth
			@dvdReleaseDay = dvdReleaseDay


		def updateDvdReleaseDate (dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) 			@dvdReleaseYear = dvdReleaseYear
			@dvdReleaseMonth = dvdReleaseMonth
			@dvdReleaseDay = dvdReleaseDay

