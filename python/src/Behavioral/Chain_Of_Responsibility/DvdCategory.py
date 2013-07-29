from TopTitle import TopTitle

class DvdCategory(TopTitle) :

	category = None
	topCategoryTitle = None

	def __init__(self,category) :
		self.setCategory(category)

	def setCategory(self,categoryIn) : 
		self.category = categoryIn

	def getCategory(self) :
		return  self.category

	def getAllCategories(self) : 
		return self.getCategory()

	def setTopCategoryTitle(self,topCategoryTitleIn) : 
		self.topCategoryTitle = topCategoryTitleIn

	def getTopCategoryTitle(self) :
		return self.topCategoryTitle

	def getTopTitle(self) : 
		return self.topCategoryTitle
