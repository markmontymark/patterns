#//DvdSubSubCategory.java - the Lowest Class in the Chain

define ['Behavioral/Chain_Of_Responsibility/TopTitle',
],(
TopTitle
) ->

	class DvdSubSubCategory extends TopTitle
		subSubCategory   : null
		topSubSubCategoryTitle   : null
		parent   : null

		constructor : (dvdSubCategory, subCategory) ->
			@setSubSubCategory(subCategory)
			@parent = dvdSubCategory

		setSubSubCategory : (subSubCategoryIn)  -> @subSubCategory = subSubCategoryIn
		getSubSubCategory :  -> @subSubCategory

		setSubCategory : (subCategoryIn) -> @parent.setSubCategory(subCategoryIn)
		getSubCategory : -> @parent.getSubCategory()

		setCategory : (categoryIn) -> @parent.setCategory(categoryIn)
		getCategory : -> @parent.getCategory()

		getAllCategories : -> "#{@getCategory()}/#{@getSubCategory()}/#{@getSubSubCategory()}"
		setTopSubSubCategoryTitle : (topSubSubCategoryTitleIn) -> @topSubSubCategoryTitle = topSubSubCategoryTitleIn
		getTopSubSubCategoryTitle : -> @topSubSubCategoryTitle

		setTopSubCategoryTitle : (topSubCategoryTitleIn) -> @parent.setTopSubCategoryTitle(topSubCategoryTitleIn)
		getTopSubCategoryTitle : -> @parent.getTopSubCategoryTitle()

		setTopCategoryTitle : (topCategoryTitleIn) -> @parent.setTopCategoryTitle(topCategoryTitleIn)
		getTopCategoryTitle : -> @parent.getTopCategoryTitle()

		getTopTitle : ->
			return @getTopSubSubCategoryTitle() if @getTopSubSubCategoryTitle()
			@parent.getTopTitle()

	return DvdSubSubCategory
