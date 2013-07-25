#//TitleAndActor - A Helper Class

define [] , () ->
	class TitleAndActor
		constructor : (@title, @actor) ->
		getTitle: () -> @title
		getActor: () -> @actor
