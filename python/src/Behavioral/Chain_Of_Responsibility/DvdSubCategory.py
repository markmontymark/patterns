
define ['Behavioral/Chain_Of_Responsibility/TopTitle',
],(
TopTitle
) ->

  class DvdSubCategory extends TopTitle
    subCategory : null
    topSubCategoryTitle : null
    parent : null
    constructor : (dvdCategory, subCategory) ->
      @setSubCategory(subCategory)
      @parent = dvdCategory

    setSubCategory : (subCategoryIn) -> @subCategory = subCategoryIn
    getSubCategory : -> @subCategory

    setCategory : (categoryIn) -> @parent.setCategory(categoryIn)
    getCategory : -> @parent.getCategory()

    getAllCategories : -> "#{@getCategory()}/#{@getSubCategory()}"

    setTopSubCategoryTitle : (topSubCategoryTitleIn) -> @topSubCategoryTitle = topSubCategoryTitleIn
    getTopSubCategoryTitle : -> @topSubCategoryTitle

    setTopCategoryTitle : (topCategoryTitleIn) -> @parent.setTopCategoryTitle(topCategoryTitleIn)
    getTopCategoryTitle : -> @parent.getTopCategoryTitle()

    getTopTitle : ->
      return @getTopSubCategoryTitle() if @getTopSubCategoryTitle()
      @parent.getTopTitle()

  return DvdSubCategory
