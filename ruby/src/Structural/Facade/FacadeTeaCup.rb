
# one of three classes the facade calls

class FacadeTeaCup

	def initialize()
		setTeaBagIsSteeped(false)
	end

	def setTeaBagIsSteeped(isTeaBagSteeped)
  		@teaBagIsSteeped = isTeaBagSteeped
	end

	def getTeaBagIsSteeped()
 		return @teaBagIsSteeped
	end

	def addFacadeTeaBag(facadeTeaBagIn)
 		@facadeTeaBag = facadeTeaBagIn
		return "the tea bag is in the tea cup"
	end

	def addFacadeWater(facadeWaterIn)
 		@facadeWater = facadeWaterIn
		return "the water is in the tea cup"
	end

	def steepTeaBag()
 		if @facadeTeaBag and @facadeWater and @facadeWater.getWaterIsBoiling()
 			setTeaBagIsSteeped(true)
			return "the tea is steeping in the cup"
		end
		setTeaBagIsSteeped(false)
		return "the tea is not steeping in the cup"
	end

	def to_s()
 		if getTeaBagIsSteeped()
 			return "A nice cuppa tea!" 
		end
		retval = ["A cup with "]
		if @facadeWater
 			if @facadeWater.getWaterIsBoiling()
 				retval.push("boiling water ")
			else
 				retval.push("cold water ")
			end
		else
 			retval.push("no water ")
		end

		if @facadeTeaBag
 			retval.push("and a tea bag")
		else
 			retval.push("and no tea bag")
		end
		return ''.join(retval)
	end

end
