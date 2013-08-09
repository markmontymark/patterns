

#//AbstractFork - Two of Two Prototypes

class AbstractFork

	attr_accessor :forkName

	def initialize()
		raise "Can't instantiate abstract class, AbstractFork"
	end

	def setForkName(forkName)
 		@forkName = forkName
	end

	def getForkName()
 		return @forkName
	end

end

