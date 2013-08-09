require "Behavioral/Chain_Of_Responsibility/TopTitle"

class DvdCategory < TopTitle


	def initialize(category)
 		setCategory(category)
		@topCategoryTitle = nil
	end

	def setCategory(categoryIn)
 		@category = categoryIn
	end

	def getCategory()
 		return  @category
	end

	def getAllCategories()
 		return getCategory()
	end

	def setTopCategoryTitle(topCategoryTitleIn)
 		@topCategoryTitle = topCategoryTitleIn
	end

	def getTopCategoryTitle()
 		return @topCategoryTitle
	end

	def getTopTitle()
 		return @topCategoryTitle
	end
end
