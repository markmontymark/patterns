#//DvdSubSubCategory - the Lowest Class in the Chain

require "Behavioral/Chain_Of_Responsibility/TopTitle"

class DvdSubSubCategory < TopTitle


	def initialize(dvdSubCategory, subCategory)
		@subSubCategory   = nil
		@topSubSubCategoryTitle   = nil
 		setSubSubCategory(subCategory)
		@parent = dvdSubCategory
	end

	def setSubSubCategory(subSubCategoryIn)
 		@subSubCategory = subSubCategoryIn
	end

	def getSubSubCategory()
 		return @subSubCategory
	end

	def setSubCategory(subCategoryIn)
 		@parent.setSubCategory(subCategoryIn)
	end

	def getSubCategory()
 		return @parent.getSubCategory()
	end

	def setCategory(categoryIn)
 		@parent.setCategory(categoryIn)
	end

	def getCategory()
 		return @parent.getCategory()
	end

	def getAllCategories()
 		return "#{getCategory()}/#{ getSubCategory()}/#{ getSubSubCategory()}"
	end

	def setTopSubSubCategoryTitle(topSubSubCategoryTitleIn)
 		@topSubSubCategoryTitle = topSubSubCategoryTitleIn
	end

	def getTopSubSubCategoryTitle()
 		return @topSubSubCategoryTitle
	end

	def setTopSubCategoryTitle(topSubCategoryTitleIn)
 		@parent.setTopSubCategoryTitle(topSubCategoryTitleIn)
	end

	def getTopSubCategoryTitle()
 		return @parent.getTopSubCategoryTitle()
	end

	def setTopCategoryTitle(topCategoryTitleIn)
 		@parent.setTopCategoryTitle(topCategoryTitleIn)
	end

	def getTopCategoryTitle()
 		return @parent.getTopCategoryTitle()
	end

	def getTopTitle()
 		return getTopSubSubCategoryTitle() if getTopSubSubCategoryTitle() 
		return @parent.getTopTitle()
	end

end
