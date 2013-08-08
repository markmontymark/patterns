#//DvdSubscriber- the observer
class DvdSubscriber

		def initialize(subscriberName)
			@subscriberName = subscriberName
		end

		def __str__()
 			return '"subscriberName":"{0}"'.format(getSubscriberName())
		end

		def getSubscriberName ()
 			return @subscriberName
		end

		def newDvdRelease (newDvdRelease,subscriptionListName)
 			return "Hello {0} , subscriber to the  {1} DVD release list.\nThe new Dvd {2} will be released on {3}/{4}/{5}.\n".format(getSubscriberName(), subscriptionListName, newDvdRelease.dvdName, newDvdRelease.dvdReleaseMonth, newDvdRelease.dvdReleaseDay, newDvdRelease.dvdReleaseYear)
		end

		def updateDvdRelease (newDvdRelease, subscriptionListName)
 			return "Hello {0} subscriber to the {1} DVD release list.\nThe following DVDs release has been revised: {2} will be released on {3}/{4}/{5}\n".format(getSubscriberName(), subscriptionListName, newDvdRelease.dvdName,  newDvdRelease.dvdReleaseMonth, newDvdRelease.dvdReleaseDay, newDvdRelease.dvdReleaseYear)
		end
end

