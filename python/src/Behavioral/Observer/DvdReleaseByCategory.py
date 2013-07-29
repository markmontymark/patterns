#//Observer (aka Dependents & Publish-Subscribe) Overview
#//An object notifies other object(s) if it changes.
#//DvdReleaseByCategory.java - the subject
#//(the class which is observed)

class DvdReleaseByCategory :

	def __init__(self,categoryName,subscriberList = [], dvdReleaseList = []):
		self.categoryName = categoryName
		self.subscriberList = subscriberList
		self.dvdReleaseList = dvdReleaseList

	def __repr__(self):
		return '"categoryName":"{0}","subscriberList":{1},"dvdReleaseList":{2}'.format(self.getCategoryName(), ','.join([str(x) for x in self.subscriberList]),','.join([str(x) for x in self.dvdReleaseList]))

	def getCategoryName (self): 
		return self.categoryName

	def addSubscriber (self,dvdSubscriber) : 
		self.subscriberList.append(dvdSubscriber)

	def removeSubscriber (self,dvdSubscriber) :
		founds = [i for subscriber,i in self.subscriberList if subscriber == dvdSubscriber]
		if founds.length > 0:
			self.subscriberList.splice(i,1)
			return true
		return false


	def newDvdRelease (self,dvdRelease):
		self.dvdReleaseList.append(dvdRelease)
		return self.notifySubscribersOfNewDvd(dvdRelease)

	def updateDvd (self,dvdRelease):
		dvdUpdated = false
		for rel,i in self.dvdReleaseList :
			if dvdRelease.serialNumber == rel.serialNumber:
				self.dvdReleaseList.splice(i,1)
				self.dvdReleaseList.append(dvdRelease)
				dvdUpdated = true
				break
		if dvdUpdated:
			return self.notifySubscribersOfUpdate(dvdRelease)
		else:
			return self.newDvdRelease(dvdRelease)


	def notifySubscribersOfNewDvd (self,dvdRelease):
		return [s.newDvdRelease(dvdRelease,self.getCategoryName()) for s in self.subscriberList]

	def notifySubscribersOfUpdate (self,dvdRelease):
		return [ s.updateDvdRelease(dvdRelease,self.getCategoryName()) for s in self.subscriberList ]
