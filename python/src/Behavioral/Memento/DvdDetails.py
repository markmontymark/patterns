#//Memento (aka Token) Overview
#//One object stores another objects state.
#//DvdDetails - the Originator
#//(the class to be backed up)
#//Contains the inner class DvdMemento - the Memento

from DvdMemento import DvdMemento

class DvdDetails :

	def __init__(self,titleName,stars = [],region = 1):
		self.titleName = titleName
		self.stars = stars
		self.region = region


	def addStar(self,star) :
		self.stars.append(star)

	def starsAsString(self) :
		return ', '.join(stars)

	def formatDvdDetails(self) : 
		return "DVD: #{0} starring: {1} encoding region: {2}".format(self.titleName,self.starsAsString(), self.region);

	#   //sets current state to what DvdMemento has
	def setDvdMemento (self,memento ) :
		for k in self:
			self[k] = None
		c = memento.getState()
		for k in c:
			self[k] = c[k]

	#//save current state of DvdDetails in a DvdMemento
	def createDvdMemento (self) :
		mem = DvdMemento()
		mem.setState(self)
		mem

