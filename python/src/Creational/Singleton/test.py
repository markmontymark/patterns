#//TestSingleSpoon.java - testing the singleton

from SingleSpoon import SingleSpoon

import unittest

class TestCreationalSingleton( unittest.TestCase ):

	def test(self) :

		self.assertTrue(SingleSpoon != None )

		aSingleSpoon = SingleSpoon()
		self.assertEqual(aSingleSpoon, SingleSpoon() )

		spoon = SingleSpoon.getTheSpoon()
		self.assertTrue(spoon != None)

		spoon = SingleSpoon.getTheSpoon()
		self.assertEqual(spoon == None)

		spoon = SingleSpoon.getTheSpoon()
		self.assertTrue(spoon == None)

		SingleSpoon.returnTheSpoon()
		spoon = SingleSpoon.getTheSpoon()
		self.assertEqual(spoon != None)

