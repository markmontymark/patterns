
# two of three classes the facade calls
class FacadeWater

	def initialize() 
		setWaterIsBoiling(false)
	end

	def boilFacadeWater()
 		setWaterIsBoiling( true )
		return "water is boiling"
	end

	def setWaterIsBoiling(isWaterBoiling)
 		@waterIsBoiling = isWaterBoiling
	end

	def getWaterIsBoiling()
 		return @waterIsBoiling
	end

end
