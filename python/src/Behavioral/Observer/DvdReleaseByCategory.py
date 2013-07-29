#//Observer (aka Dependents & Publish-Subscribe) Overview
#//An object notifies other object(s) if it changes.
#//DvdReleaseByCategory.java - the subject
#//(the class which is observed)

class DvdReleaseByCategory :
	
	dvdReleaseList = None
	subscriberList = None

	def __init__(self,categoryName,subscriberList = None, dvdReleaseList = None ) :
		self.categoryName = categoryName
		if subscriberList == None :
			self.subscriberList =  []
		else :
			self.subscriberList = subscriberList

		if dvdReleaseList == None :
			self.dvdReleaseList = []
		else :
			self.dvdReleaseList = dvdReleaseList

	def __repr__(self):
		return '"categoryName":"{0}","subscriberList":{1},"dvdReleaseList":{2}'.format(self.getCategoryName(), ','.join([str(x) for x in self.subscriberList]),','.join([str(x) for x in self.dvdReleaseList]))

	def getCategoryName (self): 
		return self.categoryName

	def addSubscriber (self,dvdSubscriber) : 
		self.subscriberList.append(dvdSubscriber)

	def removeSubscriber (self,dvdSubscriber) :
		founds = []
		for i in reversed(range(len(self.subscriberList))) :
			if self.subscriberList[i] == dvdSubscriber :
				founds.append(i)
		if len(founds) > 0 :
			for i in founds :
				del self.subscriberList[i]
			return True
		return False


	def newDvdRelease (self,dvdRelease):
		self.dvdReleaseList.append(dvdRelease)
		return self.notifySubscribersOfNewDvd(dvdRelease)

	def updateDvd (self,dvdRelease):
		dvdUpdated = False
		for i in range(len(self.dvdReleaseList)) :
			if dvdRelease.serialNumber == self.dvdReleaseList[i].serialNumber:
				del self.dvdReleaseList[i]
				self.dvdReleaseList.append(dvdRelease)
				dvdUpdated = True
				break
		if dvdUpdated:
			return self.notifySubscribersOfUpdate(dvdRelease)
		else:
			return self.newDvdRelease(dvdRelease)


	def notifySubscribersOfNewDvd (self,dvdRelease):
		return [s.newDvdRelease(dvdRelease,self.getCategoryName()) for s in self.subscriberList]

	def notifySubscribersOfUpdate (self,dvdRelease):
		return [ s.updateDvdRelease(dvdRelease,self.getCategoryName()) for s in self.subscriberList ]
