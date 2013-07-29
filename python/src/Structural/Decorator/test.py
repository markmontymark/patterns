
# testing the decorator

from TeaLeaves import TeaLeaves
from ChaiDecorator import ChaiDecorator

import unittest

class TestStructuralDecorator( unittest.TestCase ):
	def test(self) :
		teaLeaves = TeaLeaves()
		chaiDecorator = ChaiDecorator(teaLeaves)
		self.assertEqual(chaiDecorator.steepTea(), "bay leaf is steeping ,cinnamon stick is steeping ,ginger is steeping ,honey is steeping ,soy milk is steeping ,vanilla bean is steeping , tea is steeping with chai")

