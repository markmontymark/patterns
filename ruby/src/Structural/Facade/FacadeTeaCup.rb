
# one of three classes the facade calls

class FacadeTeaCup :

	teaBagIsSteeped = None
	facadeWater = None
	facadeTeaBag = None

	def initialize()
		self.setTeaBagIsSteeped(False)

	def setTeaBagIsSteeped(self,isTeaBagSteeped)  :
		self.teaBagIsSteeped = isTeaBagSteeped

	def getTeaBagIsSteeped(self) : 
		return self.teaBagIsSteeped

	def addFacadeTeaBag(self,facadeTeaBagIn) :
		self.facadeTeaBag = facadeTeaBagIn
		return "the tea bag is in the tea cup"

	def addFacadeWater(self,facadeWaterIn) :
		self.facadeWater = facadeWaterIn
		return "the water is in the tea cup"

	def steepTeaBag(self) :
		if self.facadeTeaBag and self.facadeWater and self.facadeWater.getWaterIsBoiling() :
			self.setTeaBagIsSteeped(True)
			return "the tea is steeping in the cup"
		self.setTeaBagIsSteeped(False)
		return "the tea is not steeping in the cup"

	def __str__(self) :
		if self.getTeaBagIsSteeped() :
			return "A nice cuppa tea!" 
		retval = ["A cup with "]
		if self.facadeWater :
			if self.facadeWater.getWaterIsBoiling() :
				retval.append("boiling water ")
			else :
				retval.append("cold water ")
		else :
			retval.append("no water ")

		if self.facadeTeaBag :
			retval.append("and a tea bag")
		else :
			retval.append("and no tea bag")
		return ''.join(retval)
