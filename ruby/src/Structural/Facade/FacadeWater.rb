
# two of three classes the facade calls
class FacadeWater:

	waterIsBoiling = None

	def initialize() 
		self.setWaterIsBoiling(False)

	def boilFacadeWater(self) :
		self.setWaterIsBoiling( True )
		return "water is boiling"

	def setWaterIsBoiling(self,isWaterBoiling) :
		self. waterIsBoiling = isWaterBoiling

	def getWaterIsBoiling(self) : 
		return self.waterIsBoiling
