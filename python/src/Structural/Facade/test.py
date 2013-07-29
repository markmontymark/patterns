
# testing the Facade

from FacadeCuppaMaker import FacadeCuppaMaker

import unittest

class TestStructuralFacade( unittest.TestCase ):
	def test(self) :
		cuppaMaker = FacadeCuppaMaker()
		self.assertEqual(cuppaMaker != None, True)
		teaCup = cuppaMaker.makeACuppa()
		self.assertEqual(teaCup != None, True)
		self.assertEqual( str(teaCup), "A nice cuppa tea!")
