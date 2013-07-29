# testing the adapter

from TeaBag import TeaBag
from TeaCup import TeaCup
from TeaBall import TeaBall
from LooseLeafTea import LooseLeafTea

import unittest

class TestStructuralAdapter(unittest.TestCase) :

	def test(self) :
		teaCup = TeaCup()
		teaBag = TeaBag()
		self.assertEqual(teaCup.steepTeaBag(teaBag), "tea bag is steeping in cup")

		teaCup = TeaCup()
		looseLeafTea = LooseLeafTea()
		teaBall = TeaBall(looseLeafTea)
		self.assertEqual( teaCup.steepTeaBag(teaBall) , True )
