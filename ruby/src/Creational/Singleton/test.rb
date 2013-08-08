#//TestSingleSpoon.java - testing the singleton

from SingleSpoon import SingleSpoon

import unittest

class TestCreationalSingleton( unittest.TestCase ):

	def test(self) :

		aSingleSpoon = SingleSpoon()
		self.assertEqual(aSingleSpoon, SingleSpoon() )

		spoon = aSingleSpoon.getTheSpoon()
		self.assertTrue(spoon != None)

		spoon = aSingleSpoon.getTheSpoon()
		self.assertTrue(spoon == None)

		spoon = aSingleSpoon.getTheSpoon()
		self.assertTrue(spoon == None)

		aSingleSpoon.returnTheSpoon()
		spoon = aSingleSpoon.getTheSpoon()
		self.assertTrue(spoon != None)

