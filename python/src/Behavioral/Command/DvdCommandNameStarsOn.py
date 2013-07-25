#//DvdCommandNameStarsOn.java - one of two Concrete Commands
define ['Behavioral/Command/CommandAbstract'
],(
CommandAbstract
) ->
	class DvdCommandNameStarsOn extends CommandAbstract
		constructor : (@dvdName) ->
		execute : -> @dvdName.setNameStarsOn()
