
#//FacadeWater.java - two of three classes the facade calls
define [],() ->
	class FacadeWater

		waterIsBoiling : null

		constructor : ->
			@setWaterIsBoiling false

		boilFacadeWater : ->
			@setWaterIsBoiling true
			"water is boiling"

		setWaterIsBoiling : (isWaterBoiling) -> @waterIsBoiling = isWaterBoiling
		getWaterIsBoiling : -> @waterIsBoiling
		
	return FacadeWater
