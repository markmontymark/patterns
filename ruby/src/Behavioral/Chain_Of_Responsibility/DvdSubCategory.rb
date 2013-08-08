
from TopTitle import TopTitle

class DvdSubCategory(TopTitle) :

	subCategory = None
	topSubCategoryTitle = None
	parent = None

	def initialize( dvdCategory, subCategory) :
		self.setSubCategory(subCategory)
		self.parent = dvdCategory

	def setSubCategory(self,subCategoryIn) :
		self.subCategory = subCategoryIn

	def getSubCategory(self) : 
		return self.subCategory

	def setCategory(self,categoryIn) :
		self.parent.setCategory(categoryIn)

	def getCategory(self) :
		return self.parent.getCategory()

	def getAllCategories(self) : 
		return '{0}/{1}'.format(self.getCategory(),self.getSubCategory())

	def setTopSubCategoryTitle(self,topSubCategoryTitleIn) :
		self.topSubCategoryTitle = topSubCategoryTitleIn

	def getTopSubCategoryTitle(self) :
		return self.topSubCategoryTitle

	def setTopCategoryTitle(topCategoryTitleIn) : 
		self.parent.setTopCategoryTitle(topCategoryTitleIn)

	def getTopCategoryTitle(self) : 
		return self.parent.getTopCategoryTitle()

	def getTopTitle(self) :
		return self.getTopSubCategoryTitle() if self.getTopSubCategoryTitle() else self.parent.getTopTitle()
