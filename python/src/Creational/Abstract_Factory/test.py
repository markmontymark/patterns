

# - Testing the abstract factory

from BostonConcreteSoupFactory import BostonConcreteSoupFactory
from HonoluluConcreteSoupFactory import HonoluluConcreteSoupFactory

import unittest

class TestAbstractFactory( unittest.TestCase ):

	def MakeSoupOfTheDay(concreteSoupFactory) :
		return concreteSoupFactory.makeFishChowder()

	def testLoadedBostonConcreteSoupFactory(self):
		'''loaded BostonConcreteSoupFactory'''
		self.assertEqual( BostonConcreteSoupFactory() != None, True)

	def testLoadedHonoluluConcreteSoupFactory(self):
		'''loaded HonoluluConcreteSoupFactory'''
		self.assertEqual( HonoluluConcreteSoupFactory() != None, True)

	def testExpectingBostonScrodFishChowder(self):
		'''expecting Boston soup of the day to be ScrodFishChowder'''
		bSoupFactory = BostonConcreteSoupFactory()
		bsoupOfTheDay = MakeSoupOfTheDay(bSoupFactory)
		self.assertEqual( "The Soup of the day in {0} is {1}".format(bSoupFactory.factoryLocation, bsoupOfTheDay.soupName), 
			"The Soup of the day in Boston is ScrodFishChowder")

	def testExpectingHonoluluOpakapakaFishChowder(self) :
		'''expecting Boston soup of the day to be ScrodFishChowder'''
		hSoupFactory = HonoluluConcreteSoupFactory()
		hsoupOfTheDay = MakeSoupOfTheDay(hSoupFactory)
		self.assertEqual( "The Soup of the day in {0} is {1}".format(hSoupFactory.factoryLocation,hsoupOfTheDay.soupName), 
			"The Soup of the day in Honolulu is OpakapakaFishChowder")
