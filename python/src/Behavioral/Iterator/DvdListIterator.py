

#//DvdListIterator

define ['Behavioral/Iterator/IteratorInterface'
],(
IteratorInterface
) ->

	class DvdListIterator extends IteratorInterface

		constructor : (@list) ->
			@currentPosition = 0
				
		first : -> @currentPosition = 0
				 
		next: ->
			@currentPosition++ if @currentPosition < @list.titleCount
				 
		isDone : ->
			@currentPosition >= @list.titleCount
				 
		currentItem: -> @list.titles[ @currentPosition ]
