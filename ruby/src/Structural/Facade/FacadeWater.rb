
# two of three classes the facade calls
class FacadeWater

	def initialize() 
		setWaterIsBoiling(False)
	end

	def boilFacadeWater()
 		setWaterIsBoiling( True )
		return "water is boiling"
	end

	def setWaterIsBoiling(isWaterBoiling)
 		@waterIsBoiling = isWaterBoiling
	end

	def getWaterIsBoiling()
 		return @waterIsBoiling
	end

end
