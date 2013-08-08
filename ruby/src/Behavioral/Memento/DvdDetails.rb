#//Memento (aka Token) Overview
#//One object stores another objects state.
#//DvdDetails - the Originator
#//(the class to be backed up)
#//Contains the inner class DvdMemento - the Memento

require "Behavioral/Memento/DvdMemento"

class DvdDetails

	def initialize(titleName,stars = [],region = 1)
		@state = {}
		setTitleName(titleName)
		setStars(stars)
		setRegion(region)
	end

	def getTitleName()
 		return @state['titleName']
	end

	def setTitleName(t)
 		@state['titleName'] = t
	end

	def getStars()
 		return @state['stars']
	end

	def setStars(t)
 		@state['stars'] = t
	end

	def getRegion()
 		return @state['region']
	end

	def setRegion(t)
 		@state['region'] = t
	end


	def addStar(star)
 		@state['stars'].append(star)
	end

	def starsAsString()
 		return getStars().join(', ')
	end

	def formatDvdDetails()
 		return "DVD: {0} starring: {1} encoding region: {2}".format(getTitleName(),starsAsString(), getRegion() );
	end

	#   //sets current state to what DvdMemento has
	def setDvdMemento (memento )
 		for k in @state
			@state[k] = None
		end
		c = memento.getState()
		for k in c
			@state[k] = c[k]
		end
	end

	#//save current state of DvdDetails in a DvdMemento
	def createDvdMemento ()
 		mem = DvdMemento()
		mem.setState(@state)
		return mem
	end

end
