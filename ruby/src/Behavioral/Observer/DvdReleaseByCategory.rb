#//Observer (aka Dependents & Publish-Subscribe) Overview
#//An object notifies other object(s) if it changes.
#//DvdReleaseByCategory - the subject
#//(the class which is observed)

class DvdReleaseByCategory
	
	def initialize(categoryName,subscriberList = None, dvdReleaseList = None )
 		@categoryName = categoryName
		if subscriberList == None
 			@subscriberList =  []
		else
 			@subscriberList = subscriberList
		end

		if dvdReleaseList == None
 			@dvdReleaseList = []
		else
 			@dvdReleaseList = dvdReleaseList
		end
	end

	def __repr__()
		sl = @subscriberList.join(',')
		dl = @dvdReleaseList.join(',')
		return '"categoryName":"{0}","subscriberList":{1},"dvdReleaseList":{2}'.format(getCategoryName(), sl,dl)
	end

	def getCategoryName ()
		return @categoryName
	end

	def addSubscriber (dvdSubscriber)
 		@subscriberList.append(dvdSubscriber)
	end

	def removeSubscriber (dvdSubscriber)
 		founds = []
		for i in reversed(range(len(@subscriberList)))
 			if @subscriberList[i] == dvdSubscriber
 				founds.append(i)
			end
		end
		if len(founds) > 0
 			for i in founds
 				del @subscriberList[i]
			end
			return True
		end
		return False
	end


	def newDvdRelease (dvdRelease)
		@dvdReleaseList.append(dvdRelease)
		return notifySubscribersOfNewDvd(dvdRelease)
	end

	def updateDvd (dvdRelease)
		dvdUpdated = False
		for i in range(len(@dvdReleaseList))
 			if dvdRelease.serialNumber == @dvdReleaseList[i].serialNumber
				del @dvdReleaseList[i]
				@dvdReleaseList.append(dvdRelease)
				dvdUpdated = True
				break
			end
		end
		if dvdUpdated
			return notifySubscribersOfUpdate(dvdRelease)
		else
			return newDvdRelease(dvdRelease)
		end
	end


	def notifySubscribersOfNewDvd (dvdRelease)
		return @subscriberList.map { |s| s.newDvdRelease(dvdRelease,getCategoryName()) }
	end

	def notifySubscribersOfUpdate (dvdRelease)
		return @subscriberList.map { |s| s.updateDvdRelease(dvdRelease,getCategoryName()) }
	end

end
