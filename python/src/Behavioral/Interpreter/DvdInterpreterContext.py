#//DvdInterpreterContext - The Context
define [],() ->
	class DvdInterpreterContext
		constructor : (@titles = [],@actors = [], @titlesAndActors = []) ->

		addTitle : (title) -> @titles.push title

		addActor : (actor) -> @actors.push actor

		addTitleAndActor : (titleAndActor) -> @titlesAndActors.push titleAndActor

		getAllTitles : -> @titles
		getAllActors : -> @actors

		getActorsForTitle : (title) ->
			(ta.getActor() for ta in @titlesAndActors when ta.getTitle() is title)

		getTitlesForActor:  (actor) ->
			(ta.getTitle() for ta in @titlesAndActors when ta.getActor() is actor)

