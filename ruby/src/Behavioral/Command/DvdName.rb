#//DvdName  the Receiver


class DvdName

	def initialize(titleName)
 		setTitleName(titleName)
	end

	def setTitleName(titleNameIn)
 		@titleName = titleNameIn
	end

	def getTitleName()
 		return @titleName
	end

	def setNameStarsOn()
 		setTitleName(getTitleName().replace(' ','*'))
	end

	def setNameStarsOff()
 		setTitleName(getTitleName().replace('*',' '))
	end

	def __str__()
		return "DVD: {0}".format(getTitleName())
	end
end
