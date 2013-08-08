require "TopTitle"

class DvdCategory < TopTitle

	category = None
	topCategoryTitle = None

	def initialize(category) 		@setCategory(category)

	def setCategory(categoryIn) 		@category = categoryIn

	def getCategory(self) 		return  @category

	def getAllCategories(self) 		return @getCategory()

	def setTopCategoryTitle(topCategoryTitleIn) 		@topCategoryTitle = topCategoryTitleIn

	def getTopCategoryTitle(self) 		return @topCategoryTitle

	def getTopTitle(self) 		return @topCategoryTitle
