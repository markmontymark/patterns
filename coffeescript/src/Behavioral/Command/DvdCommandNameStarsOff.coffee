#//DvdCommandNameStarsOff.java - two of two Concrete Commands
define ['Behavioral/Command/CommandAbstract'
],(
CommandAbstract
) ->
	class DvdCommandNameStarsOff extends CommandAbstract
		constructor : (@dvdName) ->
		execute : -> @dvdName.setNameStarsOff()
