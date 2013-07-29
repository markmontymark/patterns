from DvdCategory import DvdCategory
from DvdSubCategory import DvdSubCategory
from DvdSubSubCategory import DvdSubSubCategory

import unittest

class TestStrategy(unittest.TestCase):

	def test(self):
		"""Test Behavioral Chain Of Responsibility"""

		topTitle = None
		comedy = DvdCategory("Comedy")
		comedy.setTopCategoryTitle("Ghost World")

		comedyChildrens = DvdSubCategory(comedy, "Childrens")

		comedyChildrensAquatic = DvdSubSubCategory(comedyChildrens, "Aquatic")
		comedyChildrensAquatic.setTopSubSubCategoryTitle( "Sponge Bob Squarepants")

		#it "Getting top comedy title:",->
		topTitle = comedy.getTopTitle()
		self.assertEqual("The top title for " + comedy.getAllCategories() + " is " + topTitle,"The top title for Comedy is Ghost World")

		#it "Getting top comedy/childrens title:", ->
		topTitle = comedyChildrens.getTopTitle()
		self.assertEqual("The top title for " + comedyChildrens.getAllCategories() + " is " + topTitle,"The top title for Comedy/Childrens is Ghost World")

		#it "Getting top comedy/childrens/aquatic title:", ->
		topTitle = comedyChildrensAquatic.getTopTitle()
		self.assertEqual("The top title for " + comedyChildrensAquatic.getAllCategories() + " is " + topTitle,"The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants")
