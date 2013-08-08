#//DvdName  the Receiver


class DvdName

	titleName = None

	def initialize(titleName) 		@setTitleName(titleName)

	def setTitleName(titleNameIn) 		@titleName = titleNameIn

	def getTitleName(self) 		return @titleName

	def setNameStarsOn(self) 		@setTitleName(@getTitleName().replace(' ','*'))

	def setNameStarsOff(self) 		@setTitleName(@getTitleName().replace('*',' '))

	def __str__(self)		return "DVD: {0}".format(@getTitleName())
