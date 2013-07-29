
from DvdList import DvdList

import unittest

class TestIterator(unittest.TestCase):

	def test(self):
		fiveShakespeareMovies = DvdList()
		fiveShakespeareMovies.append("10 Things I Hate About You")
		fiveShakespeareMovies.append("Shakespeare In Love")
		fiveShakespeareMovies.append("O (2001)")
		fiveShakespeareMovies.append("American Pie 2")
		fiveShakespeareMovies.append("Scotland, PA.")
		fiveShakespeareMovies.append("Hamlet (2000)")

		fiveShakespeareIterator = fiveShakespeareMovies.createIterator()

		#it 'first iteration',->
		retval = []
		while not fiveShakespeareIterator.isDone():
			retval.append(str(fiveShakespeareIterator.currentItem()))
			fiveShakespeareIterator.next()
		self.assertEqual(', '.join(retval), "10 Things I Hate About You, Shakespeare In Love, O (2001), American Pie 2, Scotland, PA., Hamlet (2000)")

		#it 'second iteration',->
		fiveShakespeareMovies.remove("American Pie 2")

		retval = []
		fiveShakespeareIterator.first()
		while not fiveShakespeareIterator.isDone():
			retval.append(str(fiveShakespeareIterator.currentItem()) )
			fiveShakespeareIterator.next()
		self.assertEqual(', '.join(retval), "10 Things I Hate About You, Shakespeare In Love, O (2001), Scotland, PA., Hamlet (2000)")
