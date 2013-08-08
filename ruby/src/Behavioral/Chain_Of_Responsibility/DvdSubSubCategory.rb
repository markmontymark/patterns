#//DvdSubSubCategory.java - the Lowest Class in the Chain

from TopTitle import TopTitle

class DvdSubSubCategory(TopTitle):

	subSubCategory   = None
	topSubSubCategoryTitle   = None
	parent   = None

	def initialize(dvdSubCategory, subCategory) :
		self.setSubSubCategory(subCategory)
		self.parent = dvdSubCategory

	def setSubSubCategory(self,subSubCategoryIn) :
		self.subSubCategory = subSubCategoryIn

	def getSubSubCategory(self) :  
		return self.subSubCategory

	def setSubCategory(self,subCategoryIn) :
		self.parent.setSubCategory(subCategoryIn)

	def getSubCategory(self) : 
		return self.parent.getSubCategory()

	def setCategory(self,categoryIn) :
		self.parent.setCategory(categoryIn)

	def getCategory(self) : 
		return self.parent.getCategory()

	def getAllCategories(self) : 
		return "{0}/{1}/{2}".format(self.getCategory(), self.getSubCategory(), self.getSubSubCategory())

	def setTopSubSubCategoryTitle(self,topSubSubCategoryTitleIn) :
		self.topSubSubCategoryTitle = topSubSubCategoryTitleIn

	def getTopSubSubCategoryTitle(self) : 
		return self.topSubSubCategoryTitle

	def setTopSubCategoryTitle(self,topSubCategoryTitleIn) :
		self.parent.setTopSubCategoryTitle(topSubCategoryTitleIn)

	def getTopSubCategoryTitle(self) : 
		return self.parent.getTopSubCategoryTitle()

	def setTopCategoryTitle(self,topCategoryTitleIn) :
		self.parent.setTopCategoryTitle(topCategoryTitleIn)

	def getTopCategoryTitle(self) : 
		return self.parent.getTopCategoryTitle()

	def getTopTitle(self) : 
		return self.getTopSubSubCategoryTitle() if self.getTopSubSubCategoryTitle() else self.parent.getTopTitle()

