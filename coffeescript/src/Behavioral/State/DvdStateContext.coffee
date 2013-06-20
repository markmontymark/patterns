# //DvdStateContext.java - the Context

define ['Behavioral/State/DvdStateName',
'Behavioral/State/DvdStateNameStars'
],(
DvdStateName,
DvdStateNameStars
) ->

	class DvdStateContext
		dvdStateName : null
		constructor : -> @setDvdStateName(new DvdStateNameStars())  # start with stars
		setDvdStateName : (dvdStateNameIn) -> @dvdStateName = dvdStateNameIn
		showName : (nameIn) -> @dvdStateName.showName(@, nameIn)
