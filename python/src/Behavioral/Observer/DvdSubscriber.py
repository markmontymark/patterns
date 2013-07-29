#//DvdSubscriber- the observer
class DvdSubscriber:

		def __init__ (self,subscriberName) :
			self.subscriberName = subscriberName

		def __str__(self) :
			return '"subscriberName":"{0}"'.format(self.getSubscriberName())

		def getSubscriberName (self) :
			return self.subscriberName

		def newDvdRelease (self,newDvdRelease,subscriptionListName) :
			return """Hello {0} , subscriber to the  {1} DVD release list.
The new Dvd {2} will be released on {3}/{4}/{5}.
""".format(self.getSubscriberName(), subscriptionListName, newDvdRelease.dvdName, newDvdRelease.dvdReleaseMonth, newDvdRelease.dvdReleaseDay, newDvdRelease.dvdReleaseYear)

		def updateDvdRelease (self,newDvdRelease, subscriptionListName) :
			return """Hello {0} subscriber to the {1} DVD release list.
The following DVDs release has been revised: {2} will be released on {3}/{4}/{5}
""".format(self.getSubscriberName(), subscriptionListName, newDvdRelease.dvdName,  newDvdRelease.dvdReleaseMonth, newDvdRelease.dvdReleaseDay, newDvdRelease.dvdReleaseYear)

