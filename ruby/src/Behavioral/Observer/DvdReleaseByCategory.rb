#//Observer (aka Dependents & Publish-Subscribe) Overview
#//An object notifies other object(s) if it changes.
#//DvdReleaseByCategory.java - the subject
#//(the class which is observed)

class DvdReleaseByCategory
	
	dvdReleaseList = None
	subscriberList = None

	def initialize(categoryName,subscriberList = None, dvdReleaseList = None ) 		@categoryName = categoryName
		if subscriberList == None 			@subscriberList =  []
		else 			@subscriberList = subscriberList

		if dvdReleaseList == None 			@dvdReleaseList = []
		else 			@dvdReleaseList = dvdReleaseList

	def __repr__(self)		return '"categoryName":"{0}","subscriberList":{1},"dvdReleaseList":{2}'.format(@getCategoryName(), ','.join([str(x) for x in @subscriberList]),','.join([str(x) for x in @dvdReleaseList]))

	def getCategoryName (self)		return @categoryName

	def addSubscriber (dvdSubscriber) 		@subscriberList.append(dvdSubscriber)

	def removeSubscriber (dvdSubscriber) 		founds = []
		for i in reversed(range(len(@subscriberList))) 			if @subscriberList[i] == dvdSubscriber 				founds.append(i)
		if len(founds) > 0 			for i in founds 				del @subscriberList[i]
			return True
		return False


	def newDvdRelease (dvdRelease)		@dvdReleaseList.append(dvdRelease)
		return @notifySubscribersOfNewDvd(dvdRelease)

	def updateDvd (dvdRelease)		dvdUpdated = False
		for i in range(len(@dvdReleaseList)) 			if dvdRelease.serialNumber == @dvdReleaseList[i].serialNumber				del @dvdReleaseList[i]
				@dvdReleaseList.append(dvdRelease)
				dvdUpdated = True
				break
		if dvdUpdated			return @notifySubscribersOfUpdate(dvdRelease)
		else			return @newDvdRelease(dvdRelease)


	def notifySubscribersOfNewDvd (dvdRelease)		return [s.newDvdRelease(dvdRelease,@getCategoryName()) for s in @subscriberList]

	def notifySubscribersOfUpdate (dvdRelease)		return [ s.updateDvdRelease(dvdRelease,@getCategoryName()) for s in @subscriberList ]
