#//DvdSubscriber.java - the observer
define [],() ->

	class DvdSubscriber

		constructor : (@subscriberName) ->

		getSubscriberName : -> @subscriberName

		newDvdRelease : (newDvdRelease,subscriptionListName) ->
			"""
			Hello #{@getSubscriberName()} , subscriber to the  #{subscriptionListName} DVD release list.
			The new Dvd #{newDvdRelease.dvdName} will be released on #{newDvdRelease.dvdReleaseMonth}/#{newDvdRelease.dvdReleaseDay}/#{newDvdRelease.dvdReleaseYear}.
			"""

		updateDvdRelease : (newDvdRelease, subscriptionListName) ->
			"""
			Hello #{@getSubscriberName()}, subscriber to the #{subscriptionListName} DVD release list.
			The following DVDs release has been revised: #{newDvdRelease.dvdName} will be released on #{newDvdRelease.dvdReleaseMonth}/#{newDvdRelease.dvdReleaseDay}/#{newDvdRelease.dvdReleaseYear}
			"""

