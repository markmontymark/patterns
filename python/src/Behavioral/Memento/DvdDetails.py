#//Memento (aka Token) Overview
#//One object stores another objects state.
#//DvdDetails - the Originator
#//(the class to be backed up)
#//Contains the inner class DvdMemento - the Memento

from DvdMemento import DvdMemento

class DvdDetails :

	def __init__(self,titleName,stars = [],region = 1):
		self.state = {}
		self.setTitleName(titleName)
		self.setStars(stars)
		self.setRegion(region)

	def getTitleName(self) :
		return self.state['titleName']

	def setTitleName(self,t) :
		self.state['titleName'] = t

	def getStars(self) :
		return self.state['stars']

	def setStars(self,t) :
		self.state['stars'] = t

	def getRegion(self) :
		return self.state['region']

	def setRegion(self,t) :
		self.state['region'] = t


	def addStar(self,star) :
		self.state['stars'].append(star)

	def starsAsString(self) :
		return ', '.join(self.getStars())

	def formatDvdDetails(self) : 
		return "DVD: {0} starring: {1} encoding region: {2}".format(self.getTitleName(),self.starsAsString(), self.getRegion() );

	#   //sets current state to what DvdMemento has
	def setDvdMemento (self,memento ) :
		for k in self.state:
			self.state[k] = None
		c = memento.getState()
		for k in c:
			self.state[k] = c[k]

	#//save current state of DvdDetails in a DvdMemento
	def createDvdMemento (self) :
		mem = DvdMemento()
		mem.setState(self.state)
		return mem

