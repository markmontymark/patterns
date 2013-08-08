#//DvdName  the Receiver


class DvdName:

	titleName = None

	def initialize(titleName) :
		self.setTitleName(titleName)

	def setTitleName(self,titleNameIn) :
		self.titleName = titleNameIn

	def getTitleName(self) :
		return self.titleName

	def setNameStarsOn(self) : 
		self.setTitleName(self.getTitleName().replace(' ','*'))

	def setNameStarsOff(self) : 
		self.setTitleName(self.getTitleName().replace('*',' '))

	def __str__(self): 
		return "DVD: {0}".format(self.getTitleName())
