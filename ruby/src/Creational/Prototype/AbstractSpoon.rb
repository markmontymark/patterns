

# AbstractSpoon- One of Two Prototypes


class AbstractSpoon

	def initialize()
		raise Exception("Can't instantiate abstract class, AbstractSpoon")
	end

	def setSpoonName(spoonName)
 		@spoonName = spoonName
	end

	def getSpoonName()
 		return @spoonName
	end

	def clone()
 		return copy.deepcopy(self)
	end

end

