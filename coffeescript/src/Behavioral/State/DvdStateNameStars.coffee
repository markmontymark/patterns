#//DvdStateNameStars.java - two of two Concrete States

define ['Behavioral/State/DvdStateName',
'Behavioral/State/DvdStateNameExclaim'
],(
DvdStateName,
DvdStateNameExclaim
) ->



	class DvdStateNameStars extends DvdStateName
		constructor : (@starCount = 0) ->
		showName : (ctx, name) ->
			## Circular dependency pattern
			unless DvdStateNameExclaim
				DvdStateNameExclaim = require "Behavioral/State/DvdStateNameExclaim"
			retval = name.replace ' ','*' #// show stars twice, switch to exclamation point
			if ((@starCount += 1) > 1)
				ctx.setDvdStateName( new DvdStateNameExclaim())
			retval
