
# two of three classes the facade calls
class FacadeWater

	waterIsBoiling = None

	def initialize() 
		@setWaterIsBoiling(False)

	def boilFacadeWater(self) 		@setWaterIsBoiling( True )
		return "water is boiling"

	def setWaterIsBoiling(isWaterBoiling) 		@ waterIsBoiling = isWaterBoiling

	def getWaterIsBoiling(self) 		return @waterIsBoiling
