#//DvdStateNameExclaim.java - one of two Concrete States

define ['Behavioral/State/DvdStateName',
'Behavioral/State/DvdStateNameStars'
],(
DvdStateName,
DvdStateNameStars
) ->


	class DvdStateNameExclaim extends DvdStateName
		showName : (ctx, name) ->
			## Circular dependency pattern
			unless DvdStateNameStars
				DvdStateNameStars = require "Behavioral/State/DvdStateNameStars"
			retval = name.replace ' ','!'
			ctx.setDvdStateName(new DvdStateNameStars())
			retval
