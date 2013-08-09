#//Memento (aka Token) Overview
#//One object stores another objects state.
#//DvdDetails - the Originator
#//(the class to be backed up)
#//Contains the inner class DvdMemento - the Memento

require "Behavioral/Memento/DvdMemento"

class DvdDetails

	attr_accessor :titleName,:stars,:region

	def initialize(titleName,stars = [],region = 1)
		@titleName = titleName
		@stars = stars
		@region = region
	end

	def addStar(star)
 		@stars.push(star)
	end

	def starsAsString()
 		return @stars.join(', ')
	end

	def formatDvdDetails()
 		"DVD: #{ @titleName }, starring: #{ starsAsString() }, encoding region: #{ @region }"
	end

	#   //sets current state to what DvdMemento has
	def setDvdMemento (memento )
		c = memento.getState()
		@titleName = c.titleName
		@stars = c.stars
		@region = c.region
	end

	#//save current state of DvdDetails in a DvdMemento
	def createDvdMemento ()
 		mem = DvdMemento.new(self)
		return mem
	end

end
