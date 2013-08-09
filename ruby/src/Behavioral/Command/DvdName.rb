#//DvdName  the Receiver


class DvdName

	def initialize(titleName)
 		setTitleName(titleName)
	end

	def setTitleName(titleNameIn)
 		@titleName = titleNameIn
	end

	def getTitleName()
 		@titleName
	end

	def setNameStarsOn()
 		setTitleName(getTitleName().gsub(' ','*'))
	end

	def setNameStarsOff()
 		setTitleName(getTitleName().gsub('*',' '))
	end

	def to_s()
		return "DVD: #{getTitleName()}"
	end
end
