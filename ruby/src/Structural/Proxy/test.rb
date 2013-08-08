
# testing the Proxy
from PotOfTeaProxy import PotOfTeaProxy

import unittest

class TestStructuralProxy( unittest.TestCase ):
	def test(self) :
		potOfTea = PotOfTeaProxy()
		self.assertEqual( potOfTea.pourTea(), 'Pouring tea')
