

#//DvdList.java - the Concrete Aggregate (with a Concrete Iterator inner class)

define ['Behavioral/Iterator/DvdListIterator'
],(
DvdListIterator
) ->

	class DvdList

		constructor : (@titles = [], @titleCount = 0, @arraySize = 0 ) ->
			@iterator = null

		append : (title) ->
			@titles.push title
			@titleCount++

		##
		## doesn't handle multiple removal of same title N times, only removes first
		##
		remove : (title) ->
			founds = (i for t,i in @titles when title is t)
			if founds.length > 0
				for i in founds by -1
					@titleCount--
				@titles.splice i,1

		createIterator :  ->
			return @iterator if @iterator
			@iterator = new DvdListIterator(@)
			@iterator


