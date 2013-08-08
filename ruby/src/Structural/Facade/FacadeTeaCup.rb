
# one of three classes the facade calls

class FacadeTeaCup

	def initialize()
		setTeaBagIsSteeped(False)
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
 			setTeaBagIsSteeped(True)
			return "the tea is steeping in the cup"
		end
		setTeaBagIsSteeped(False)
		return "the tea is not steeping in the cup"
	end

	def __str__()
 		if getTeaBagIsSteeped()
 			return "A nice cuppa tea!" 
		end
		retval = ["A cup with "]
		if @facadeWater
 			if @facadeWater.getWaterIsBoiling()
 				retval.append("boiling water ")
			else
 				retval.append("cold water ")
			end
		else
 			retval.append("no water ")
		end

		if @facadeTeaBag
 			retval.append("and a tea bag")
		else
 			retval.append("and no tea bag")
		end
		return ''.join(retval)
	end

end
