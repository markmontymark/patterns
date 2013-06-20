
define ['Behavioral/Iterator/DvdList'
],(
DvdList
) ->

	'use strict'

	describe 'Test Behavioral Iterator',->

		fiveShakespeareMovies = new DvdList()
		fiveShakespeareMovies.append("10 Things I Hate About You")
		fiveShakespeareMovies.append("Shakespeare In Love")
		fiveShakespeareMovies.append("O (2001)")
		fiveShakespeareMovies.append("American Pie 2")
		fiveShakespeareMovies.append("Scotland, PA.")
		fiveShakespeareMovies.append("Hamlet (2000)")

		fiveShakespeareIterator = fiveShakespeareMovies.createIterator()

		it 'first iteration',->
			retval = []
			until fiveShakespeareIterator.isDone()
				retval.push fiveShakespeareIterator.currentItem().toString()
				fiveShakespeareIterator.next()
			expect(retval.join ', ').toEqual("10 Things I Hate About You, Shakespeare In Love, O (2001), American Pie 2, Scotland, PA., Hamlet (2000)")

		it 'second iteration',->
			fiveShakespeareMovies.remove("American Pie 2")

			retval = []
			fiveShakespeareIterator.first()
			until fiveShakespeareIterator.isDone()
				retval.push(fiveShakespeareIterator.currentItem().toString() )
				fiveShakespeareIterator.next()
			expect(retval.join ', ').toEqual("10 Things I Hate About You, Shakespeare In Love, O (2001), Scotland, PA., Hamlet (2000)")
