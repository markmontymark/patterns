
#//FacadeTeaCup.java - one of three classes the facade calls

define [],() ->
	class FacadeTeaCup
		teaBagIsSteeped : null
		facadeWater : null
		facadeTeaBag : null

		constructor : ->
			@setTeaBagIsSteeped(false)

		setTeaBagIsSteeped : (isTeaBagSteeped) ->
			@teaBagIsSteeped = isTeaBagSteeped

		getTeaBagIsSteeped : -> @teaBagIsSteeped

		addFacadeTeaBag : (facadeTeaBagIn) ->
			@facadeTeaBag = facadeTeaBagIn
			"the tea bag is in the tea cup"

		addFacadeWater : (facadeWaterIn) ->
			@facadeWater = facadeWaterIn
			"the water is in the tea cup"

		steepTeaBag : ->
			if @facadeTeaBag and @facadeWater and @facadeWater.getWaterIsBoiling()
				@setTeaBagIsSteeped(true)
				return "the tea is steeping in the cup"
			@setTeaBagIsSteeped(false)
			"the tea is not steeping in the cup"

		toString : ->
			return "A nice cuppa tea!" if @getTeaBagIsSteeped()
			retval = ["A cup with "]
			if @facadeWater
				if @facadeWater.getWaterIsBoiling()
					retval.push "boiling water "
				else
					retval.push "cold water "
			else
				retval.push "no water "

			if @facadeTeaBag
				retval.push "and a tea bag"
			else
				retval.push "and no tea bag"
			retval.join ''

	return FacadeTeaCup
