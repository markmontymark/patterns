#//DvdInterpreterContext - The Context

class DvdInterpreterContext:

	def __init__(self,titles = None, actors = None, titlesAndActors = None):
		if titles == None:
			self.titles = []
		else :
			self.titles = titles

		if actors == None:
			self.actors = []
		else :
			self.actors =actors  

		if titlesAndActors == None :
			self.titlesAndActors = []
		else :
			self.titlesAndActors = titlesAndActors 

	def addTitle(self,title) : 
		self.titles.append(title)

	def addActor(self,actor) : 
		self.actors.append(actor)

	def addTitleAndActor(self,titleAndActor) : 
		self.titlesAndActors.append(titleAndActor)

	def getAllTitles(self) : 
		return self.titles

	def getAllActors(self) : 
		return self.actors

	def getActorsForTitle(self,title) :
		retval = []
		for ta in self.titlesAndActors:
			if ta.getTitle() == title :
				retval.append(ta.getActor())
		return retval
		#return [ta.getActor() for ta in self.titlesAndActors if ta.getTitle() == title]

	def getTitlesForActor(self,actor) :
		retval = []
		if actor == None :
			return retval

		for ta in self.titlesAndActors:
			if ta.getActor() == actor :
				retval.append(ta.getTitle())
		return retval

