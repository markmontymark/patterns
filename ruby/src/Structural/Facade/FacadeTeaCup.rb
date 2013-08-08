
# one of three classes the facade calls

class FacadeTeaCup

	teaBagIsSteeped = None
	facadeWater = None
	facadeTeaBag = None

	def initialize()
		@setTeaBagIsSteeped(False)

	def setTeaBagIsSteeped(isTeaBagSteeped)  		@teaBagIsSteeped = isTeaBagSteeped

	def getTeaBagIsSteeped(self) 		return @teaBagIsSteeped

	def addFacadeTeaBag(facadeTeaBagIn) 		@facadeTeaBag = facadeTeaBagIn
		return "the tea bag is in the tea cup"

	def addFacadeWater(facadeWaterIn) 		@facadeWater = facadeWaterIn
		return "the water is in the tea cup"

	def steepTeaBag(self) 		if @facadeTeaBag and @facadeWater and @facadeWater.getWaterIsBoiling() 			@setTeaBagIsSteeped(True)
			return "the tea is steeping in the cup"
		@setTeaBagIsSteeped(False)
		return "the tea is not steeping in the cup"

	def __str__(self) 		if @getTeaBagIsSteeped() 			return "A nice cuppa tea!" 
		retval = ["A cup with "]
		if @facadeWater 			if @facadeWater.getWaterIsBoiling() 				retval.append("boiling water ")
			else 				retval.append("cold water ")
		else 			retval.append("no water ")

		if @facadeTeaBag 			retval.append("and a tea bag")
		else 			retval.append("and no tea bag")
		return ''.join(retval)
