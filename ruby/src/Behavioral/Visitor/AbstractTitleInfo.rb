#//AbstractTitleInfo - the abstract Visitee

class AbstractTitleInfo

	attr_accessor :titleName

	def initialize(titleName)
		setTitleName(titleName)
	end

	def setTitleName (titleNameIn)
 		@titleName = titleNameIn
	end

	def getTitleName ()
 		return @titleName
	end

	def accept (titleBlurbVisitor)
 		raise Exception("Unimplemented method, AbstractTitleInfo.accept")
	end
end

