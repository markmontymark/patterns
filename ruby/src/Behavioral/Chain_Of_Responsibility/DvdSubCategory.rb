
require "TopTitle"

class DvdSubCategory < TopTitle

	subCategory = None
	topSubCategoryTitle = None
	parent = None

	def initialize( dvdCategory, subCategory) 		@setSubCategory(subCategory)
		@parent = dvdCategory

	def setSubCategory(subCategoryIn) 		@subCategory = subCategoryIn

	def getSubCategory(self) 		return @subCategory

	def setCategory(categoryIn) 		@parent.setCategory(categoryIn)

	def getCategory(self) 		return @parent.getCategory()

	def getAllCategories(self) 		return '{0}/{1}'.format(@getCategory(),@getSubCategory())

	def setTopSubCategoryTitle(topSubCategoryTitleIn) 		@topSubCategoryTitle = topSubCategoryTitleIn

	def getTopSubCategoryTitle(self) 		return @topSubCategoryTitle

	def setTopCategoryTitle(topCategoryTitleIn) 		@parent.setTopCategoryTitle(topCategoryTitleIn)

	def getTopCategoryTitle(self) 		return @parent.getTopCategoryTitle()

	def getTopTitle(self) 		return @getTopSubCategoryTitle() if @getTopSubCategoryTitle() else @parent.getTopTitle()
