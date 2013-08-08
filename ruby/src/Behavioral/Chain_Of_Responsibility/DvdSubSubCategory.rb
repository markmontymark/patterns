#//DvdSubSubCategory.java - the Lowest Class in the Chain

require "TopTitle"

class DvdSubSubCategory < TopTitle

	subSubCategory   = None
	topSubSubCategoryTitle   = None
	parent   = None

	def initialize(dvdSubCategory, subCategory) 		@setSubSubCategory(subCategory)
		@parent = dvdSubCategory

	def setSubSubCategory(subSubCategoryIn) 		@subSubCategory = subSubCategoryIn

	def getSubSubCategory(self) 		return @subSubCategory

	def setSubCategory(subCategoryIn) 		@parent.setSubCategory(subCategoryIn)

	def getSubCategory(self) 		return @parent.getSubCategory()

	def setCategory(categoryIn) 		@parent.setCategory(categoryIn)

	def getCategory(self) 		return @parent.getCategory()

	def getAllCategories(self) 		return "{0}/{1}/{2}".format(@getCategory(), @getSubCategory(), @getSubSubCategory())

	def setTopSubSubCategoryTitle(topSubSubCategoryTitleIn) 		@topSubSubCategoryTitle = topSubSubCategoryTitleIn

	def getTopSubSubCategoryTitle(self) 		return @topSubSubCategoryTitle

	def setTopSubCategoryTitle(topSubCategoryTitleIn) 		@parent.setTopSubCategoryTitle(topSubCategoryTitleIn)

	def getTopSubCategoryTitle(self) 		return @parent.getTopSubCategoryTitle()

	def setTopCategoryTitle(topCategoryTitleIn) 		@parent.setTopCategoryTitle(topCategoryTitleIn)

	def getTopCategoryTitle(self) 		return @parent.getTopCategoryTitle()

	def getTopTitle(self) 		return @getTopSubSubCategoryTitle() if @getTopSubSubCategoryTitle() else @parent.getTopTitle()

