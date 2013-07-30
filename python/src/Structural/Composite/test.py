
# testing the composite
from TinOfTeaBags import TinOfTeaBags
from OneTeaBag import OneTeaBag

import unittest
class TestStructuralAdapter( unittest.TestCase ):
	def test(self) :
			tinOfTeaBags = TinOfTeaBags("tin of tea bags")
			self.assertEqual("The tinOfTeaBags has {0} tea bags in it.".format(tinOfTeaBags.countTeaBags()), "The tinOfTeaBags has 0 tea bags in it.")

			teaBag1 = OneTeaBag("tea bag 1")
			self.assertEqual("The teaBag1 has {0} tea bags in it.".format(teaBag1.countTeaBags()), "The teaBag1 has 1 tea bags in it.")

			teaBag2 = OneTeaBag("tea bag 2")
			self.assertEqual("The teaBag2 has {0} tea bags in it.".format(teaBag2.countTeaBags()), "The teaBag2 has 1 tea bags in it.")

			tinOfTeaBags.add(teaBag1)
			tinOfTeaBags.add(teaBag2)

			self.assertEqual("The tinOfTeaBags now has {0} tea bags in it.".format(tinOfTeaBags.countTeaBags()), "The tinOfTeaBags now has 2 tea bags in it.")

			smallTinOfTeaBags = TinOfTeaBags("small tin of tea bags")
			self.assertEqual("The smallTinOfTeaBags has {0} tea bags in it.".format(smallTinOfTeaBags.countTeaBags()), "The smallTinOfTeaBags has 0 tea bags in it.")

			teaBag3 = OneTeaBag("tea bag 3")
			smallTinOfTeaBags.add(teaBag3)

			self.assertEqual("The smallTinOfTeaBags now has {0} tea bags in it.".format(smallTinOfTeaBags.countTeaBags()), "The smallTinOfTeaBags now has 1 tea bags in it.")

			tinOfTeaBags.add(smallTinOfTeaBags)
			self.assertEqual("The tinOfTeaBags now has {0} tea bags in it.".format(tinOfTeaBags.countTeaBags()), "The tinOfTeaBags now has 3 tea bags in it.")
			self.assertEqual(tinOfTeaBags.remove(teaBag2),True)
			self.assertEqual("The tinOfTeaBags now has {0} tea bags in it.".format(tinOfTeaBags.countTeaBags()), "The tinOfTeaBags now has 2 tea bags in it.")


