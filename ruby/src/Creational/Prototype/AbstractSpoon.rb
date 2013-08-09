

# AbstractSpoon- One of Two Prototypes


class AbstractSpoon

	attr_accessor :spoonName	

	def initialize()
		raise "Can't instantiate abstract class, AbstractSpoon"
	end

	def setSpoonName(spoonName)
 		@spoonName = spoonName
	end

	def getSpoonName()
 		return @spoonName
	end

end

