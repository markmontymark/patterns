#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Java Design Patterns Memento
#//Memento (aka Token) Overview
#//One object stores another objects state.
#//DvdDetails.java - the Originator
#//(the class to be backed up)
#//Contains the inner class DvdMemento - the Memento

define ['Behavioral/Memento/DvdMemento'
],(
DvdMemento
) ->

	class DvdDetails

		constructor : ( @titleName,@stars = [],@region,@memento) ->
		addStar : (star) -> @stars.push star
		starsAsString : -> @stars.join ', '
		formatDvdDetails : -> "DVD: #{@titleName} starring: #{@starsAsString()} encoding region: #{@region }"

		#   //sets current state to what DvdMemento has
		setDvdMemento : (memento ) ->
			for k of this
				delete this[k]
			c = memento.getState()
			for k of c
				this[k] = c[k]

		#//save current state of DvdDetails in a DvdMemento
		createDvdMemento : ->
			mem = new DvdMemento()
			mem.setState(@)
			mem

