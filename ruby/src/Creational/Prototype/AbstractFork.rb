

#//AbstractFork - Two of Two Prototypes

class AbstractFork

	def initialize()
		raise Exception("Can't instantiate abstract class, AbstractFork")
	end

	def setForkName(forkName)
 		@forkName = forkName
	end

	def getForkName()
 		return @forkName
	end

	def clone()
 		return copy.deepcopy(self)
	end

end

