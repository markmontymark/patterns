#//DvdSubscriber- the observer
class DvdSubscriber
		attr_accessor :subscriberName

		def initialize(subscriberName)
			@subscriberName = subscriberName
		end

		def to_s()
 			return "\"subscriberName\":\"#{getSubscriberName()}\""
		end

		def getSubscriberName ()
 			return @subscriberName
		end

		def newDvdRelease (newDvdRelease,subscriptionListName)
 			return "Hello #{ getSubscriberName() }, subscriber to the #{ subscriptionListName } DVD release list.\nThe new Dvd #{ newDvdRelease.dvdName } will be released on #{ newDvdRelease.dvdReleaseMonth }/#{ newDvdRelease.dvdReleaseDay }/#{ newDvdRelease.dvdReleaseYear }.\n"
		end

		def updateDvdRelease (newDvdRelease, subscriptionListName)
 			return "Hello #{ getSubscriberName() }, subscriber to the #{ subscriptionListName } DVD release list.\nThe following DVDs release has been revised: #{ newDvdRelease.dvdName  } will be released on #{ newDvdRelease.dvdReleaseMonth }/#{ newDvdRelease.dvdReleaseDay }/#{ newDvdRelease.dvdReleaseYear }.\n"
		end
end

