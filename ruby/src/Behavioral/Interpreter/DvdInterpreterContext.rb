#//DvdInterpreterContext - The Context

class DvdInterpreterContext

	def initialize(titles = nil, actors = nil, titlesAndActors = nil)		
		if titles == nil			
			@titles = []
		else 			
			@titles = titles
		end

		if actors == nil			
			@actors = []
		else
 			@actors = actors  
		end

		if titlesAndActors == nil
 			@titlesAndActors = []
		else
 			@titlesAndActors = titlesAndActors 
		end
	end

	def addTitle(title)
 		@titles.push(title)
	end

	def addActor(actor)
 		@actors.push(actor)
	end

	def addTitleAndActor(titleAndActor)
 		@titlesAndActors.push(titleAndActor)
	end

	def getAllTitles()
 		@titles.sort
	end

	def getAllActors()
 		@actors.sort
	end

	def getActorsForTitle(title)
 		retval = []
		for ta in @titlesAndActors
			if ta.getTitle() == title
 				retval.push(ta.getActor())
			end
		end
		return retval
	end


	def getTitlesForActor(actor)
 		retval = []
		if actor == nil
 			return retval
		end
		for ta in @titlesAndActors
			if ta.getActor() == actor
 				retval.push(ta.getTitle())
			end
		end
		return retval
	end
end

