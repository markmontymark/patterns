#//Observer (aka Dependents & Publish-Subscribe) Overview
#//An object notifies other object(s) if it changes.
#//DvdReleaseByCategory - the subject
#//(the class which is observed)

class DvdReleaseByCategory
	
	def initialize(categoryName,subscriberList = nil, dvdReleaseList = nil )
 		@categoryName = categoryName
		if subscriberList == nil
 			@subscriberList =  []
		else
 			@subscriberList = subscriberList
		end

		if dvdReleaseList == nil
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
 		@subscriberList.push(dvdSubscriber)
	end

	def removeSubscriber (dvdSubscriber)
 		founds = []
		(@subscriberList.length-1).downto(0) { |i|
 			if @subscriberList[i] == dvdSubscriber
 				founds.push(i)
			end
		}
		if founds.length > 0
 			for i in founds
 				@subscriberList.delete_at(i)
			end
			return true
		end
		return false
	end


	def newDvdRelease (dvdRelease)
		@dvdReleaseList.push(dvdRelease)
		return notifySubscribersOfNewDvd(dvdRelease)
	end

	def updateDvd (dvdRelease)
		dvdUpdated = false
		for i in 0..(@dvdReleaseList.length-1)
 			if dvdRelease.serialNumber == @dvdReleaseList[i].serialNumber
				@dvdReleaseList.delete_at(i)
				@dvdReleaseList.push(dvdRelease)
				dvdUpdated = true
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
		(@subscriberList.map { |s| s.newDvdRelease(dvdRelease,getCategoryName()) }).join('')
	end

	def notifySubscribersOfUpdate (dvdRelease)
		(@subscriberList.map { |s| s.updateDvdRelease(dvdRelease,getCategoryName()) }).join('')
	end

end
