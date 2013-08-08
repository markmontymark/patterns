#//DvdInterpreterContext - The Context

class DvdInterpreterContext

	def initialize(titles = None, actors = None, titlesAndActors = None)		if titles == None			@titles = []
		else 			@titles = titles

		if actors == None			@actors = []
		else 			@actors =actors  

		if titlesAndActors == None 			@titlesAndActors = []
		else 			@titlesAndActors = titlesAndActors 

	def addTitle(title) 		@titles.append(title)

	def addActor(actor) 		@actors.append(actor)

	def addTitleAndActor(titleAndActor) 		@titlesAndActors.append(titleAndActor)

	def getAllTitles(self) 		return @titles

	def getAllActors(self) 		return @actors

	def getActorsForTitle(title) 		retval = []
		for ta in @titlesAndActors			if ta.getTitle() == title 				retval.append(ta.getActor())
		return retval
		#return [ta.getActor() for ta in @titlesAndActors if ta.getTitle() == title]

	def getTitlesForActor(actor) 		retval = []
		if actor == None 			return retval

		for ta in @titlesAndActors			if ta.getActor() == actor 				retval.append(ta.getTitle())
		return retval

