define ['Behavioral/Chain_Of_Responsibility/TopTitle'
],(
TopTitle
) ->
	class DvdCategory extends TopTitle
		category : null
		topCategoryTitle : null
		constructor : (category) ->
			@setCategory(category)
		setCategory : (categoryIn) -> @category = categoryIn
		getCategory : -> @category
		getAllCategories : -> @getCategory()
		setTopCategoryTitle : (topCategoryTitleIn) -> @topCategoryTitle = topCategoryTitleIn
		getTopCategoryTitle : -> @topCategoryTitle
		getTopTitle : -> @topCategoryTitle
	return DvdCategory
