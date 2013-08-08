#//DvdRelease - a helper class

class DvdRelease:

		def initialize(serialNumber, dvdName, dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) :
			self.serialNumber = serialNumber
			self.dvdName = dvdName
			self.dvdReleaseYear = dvdReleaseYear
			self.dvdReleaseMonth = dvdReleaseMonth
			self.dvdReleaseDay = dvdReleaseDay

		def __str__(self):
			return '"serialNumber":"{0}","dvdName":"{1}","dvdReleaseYear":{2},"dvdReleaseMonth":{3},"dvdReleaseDay":{4}'.format(self.serialNumber, self.dvdName, self.dvdReleaseYear, self.dvdReleaseMonth, self.dvdReleaseDay)


		def updateDvdRelease (self,serialNumber, dvdName, dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) :
			self.serialNumber = serialNumber
			self.dvdName = dvdName
			self.dvdReleaseYear = dvdReleaseYear
			self.dvdReleaseMonth = dvdReleaseMonth
			self.dvdReleaseDay = dvdReleaseDay


		def updateDvdReleaseDate (self,dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) :
			self.dvdReleaseYear = dvdReleaseYear
			self.dvdReleaseMonth = dvdReleaseMonth
			self.dvdReleaseDay = dvdReleaseDay

