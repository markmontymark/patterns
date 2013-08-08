#//DvdInterpreterContext - The Context

class DvdInterpreterContext

	def initialize(titles = None, actors = None, titlesAndActors = None)		
		if titles == None			
			@titles = []
		else 			
			@titles = titles
		end

		if actors == None			
			@actors = []
		else
 			@actors =actors  
		end

		if titlesAndActors == None
 			@titlesAndActors = []
		else
 			@titlesAndActors = titlesAndActors 
		end
	end

	def addTitle(title)
 		@titles.append(title)
	end

	def addActor(actor)
 		@actors.append(actor)
	end

	def addTitleAndActor(titleAndActor)
 		@titlesAndActors.append(titleAndActor)
	end

	def getAllTitles()
 		return @titles
	end

	def getAllActors()
 		return @actors
	end

	def getActorsForTitle(title)
 		retval = []
		for ta in @titlesAndActors
			if ta.getTitle() == title
 				retval.append(ta.getActor())
			end
		end
		return retval
	end


	def getTitlesForActor(actor)
 		retval = []
		if actor == None
 			return retval
		end
		for ta in @titlesAndActors
			if ta.getActor() == actor
 				retval.append(ta.getTitle())
			end
		end
		return retval
	end
end

