#//TestSingleSpoon.java - testing the singleton

from SingleSpoon import SingleSpoon

import unittest

class TestCreationalSingleton( unittest.TestCase ):

	def test(self) :

		self.assertTrue(self.SingleSpoon != None )

		aSingleSpoon = SingleSpoon()
		self.assertEqual(aSingleSpoon, test.SingleSpoon)

		spoon = test.SingleSpoon.getTheSpoon()
		self.assertTrue(spoon != None)

		spoon = test.SingleSpoon.getTheSpoon()
		self.assertEqual(spoon == None)

		spoon = test.SingleSpoon.getTheSpoon()
		self.assertTrue(spoon == None)
		test.SingleSpoon.returnTheSpoon()
		spoon = test.SingleSpoon.getTheSpoon()
		self.assertEqual(spoon != None)

