

# - testing the Prototype
from PrototypeFactory import PrototypeFactory
from SoupSpoon import SoupSpoon
from SaladSpoon import SaladSpoon
from SaladFork import SaladFork

import unittest

class TestCreationalPrototype( unittest.TestCase ):

	def test(self) :
		'''Creating a Prototype Factory with a SoupSpoon and a SaladFork'''
		prototypeFactory = PrototypeFactory(SoupSpoon(), SaladFork())
		spoon = prototypeFactory.makeSpoon()
		fork = prototypeFactory.makeFork()
		self.assertEqual(spoon != None, True)
		self.assertEqual(fork != None, True)
		self.assertEqual("Spoon: {0} , Fork: {1}".format(spoon.getSpoonName(),fork.getForkName()), "Spoon: Soup Spoon , Fork: Salad Fork")

		#it 'Creating a Prototype Factory with a SaladSpoon and a SaladFork'
		prototypeFactory = PrototypeFactory(SaladSpoon(), SaladFork())
		spoon = prototypeFactory.makeSpoon()
		fork = prototypeFactory.makeFork()
		self.assertEqual(spoon != None, True)
		self.assertEqual(fork != None, True)
		self.assertEqual("Spoon: {0} , Fork: {1}".format(spoon.getSpoonName(),fork.getForkName()), "Spoon: Salad Spoon , Fork: Salad Fork")
