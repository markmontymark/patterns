#//Observer (aka Dependents & Publish-Subscribe) Overview
#//An object notifies other object(s) if it changes.
#//DvdReleaseByCategory.java - the subject
#//(the class which is observed)

define [],() ->
	class DvdReleaseByCategory

		constructor : (@categoryName,@subscriberList = [], @dvdReleaseList = []) ->

		getCategoryName : -> @categoryName

		addSubscriber : (dvdSubscriber) -> @subscriberList.push dvdSubscriber

		removeSubscriber : (dvdSubscriber) ->
			founds = (i for subscriber,i in @subscriberList when subscriber is dvdSubscriber)
			if founds.length > 0
				@subscriberList.splice(i,1)
				return true
			false
			

		newDvdRelease : (dvdRelease) ->
			@dvdReleaseList.push(dvdRelease)
			@notifySubscribersOfNewDvd(dvdRelease)

		updateDvd : (dvdRelease) ->
			dvdUpdated = false
			for rel,i in @dvdReleaseList
				if dvdRelease.serialNumber is rel.serialNumber
					@dvdReleaseList.splice(i,1)
					@dvdReleaseList.push dvdRelease
					dvdUpdated = true
					break
			if dvdUpdated
					@notifySubscribersOfUpdate(dvdRelease)
			else
					@newDvdRelease(dvdRelease)


		notifySubscribersOfNewDvd : (dvdRelease) ->
			for s in @subscriberList
				s.newDvdRelease dvdRelease,@getCategoryName()

		notifySubscribersOfUpdate : (dvdRelease) ->
			for s in @subscriberList
				s.updateDvdRelease dvdRelease,@getCategoryName()
