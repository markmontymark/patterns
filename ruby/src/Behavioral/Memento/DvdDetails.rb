#//Memento (aka Token) Overview
#//One object stores another objects state.
#//DvdDetails - the Originator
#//(the class to be backed up)
#//Contains the inner class DvdMemento - the Memento

require "DvdMemento"

class DvdDetails

	def initialize(titleName,stars = [],region = 1)		@state = {}
		@setTitleName(titleName)
		@setStars(stars)
		@setRegion(region)

	def getTitleName(self) 		return @state['titleName']

	def setTitleName(t) 		@state['titleName'] = t

	def getStars(self) 		return @state['stars']

	def setStars(t) 		@state['stars'] = t

	def getRegion(self) 		return @state['region']

	def setRegion(t) 		@state['region'] = t


	def addStar(star) 		@state['stars'].append(star)

	def starsAsString(self) 		return ', '.join(@getStars())

	def formatDvdDetails(self) 		return "DVD: {0} starring: {1} encoding region: {2}".format(@getTitleName(),@starsAsString(), @getRegion() );

	#   //sets current state to what DvdMemento has
	def setDvdMemento (memento ) 		for k in @state			@state[k] = None
		c = memento.getState()
		for k in c			@state[k] = c[k]

	#//save current state of DvdDetails in a DvdMemento
	def createDvdMemento (self) 		mem = DvdMemento()
		mem.setState(@state)
		return mem

