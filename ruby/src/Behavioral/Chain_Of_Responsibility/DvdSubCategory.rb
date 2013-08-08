
require "Behavioral/Chain_Of_Responsibility/TopTitle"

class DvdSubCategory < TopTitle


	def initialize( dvdCategory, subCategory)
 		setSubCategory(subCategory)
		@topSubCategoryTitle = None
		@parent = dvdCategory
	end

	def setSubCategory(subCategoryIn)
 		@subCategory = subCategoryIn
	end

	def getSubCategory()
 		return @subCategory
	end

	def setCategory(categoryIn)
 		@parent.setCategory(categoryIn)
	end

	def getCategory()
 		return @parent.getCategory()
	end

	def getAllCategories()
 		return '{0}/{1}'.format(getCategory(),getSubCategory())
	end

	def setTopSubCategoryTitle(topSubCategoryTitleIn)
 		@topSubCategoryTitle = topSubCategoryTitleIn
	end

	def getTopSubCategoryTitle()
 		return topSubCategoryTitle()
	end

	def setTopCategoryTitle(topCategoryTitleIn)
 		@parent.setTopCategoryTitle(topCategoryTitleIn)
	end

	def getTopCategoryTitle()
 		return @parent.getTopCategoryTitle()
	end

	def getTopTitle()
 		return getTopSubCategoryTitle() if getTopSubCategoryTitle() 
		return @parent.getTopTitle()
	end
end
