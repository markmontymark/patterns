define ['Behavioral/Chain_Of_Responsibility/DvdCategory',
'Behavioral/Chain_Of_Responsibility/DvdSubCategory',
'Behavioral/Chain_Of_Responsibility/DvdSubSubCategory'
],(
DvdCategory,
DvdSubCategory,
DvdSubSubCategory
) ->

	'use strict'

	describe 'Test Behavioral Chain Of Responsibility', ->

		topTitle = null
		comedy = new DvdCategory("Comedy")
		comedy.setTopCategoryTitle("Ghost World")

		comedyChildrens = new DvdSubCategory(comedy, "Childrens")

		comedyChildrensAquatic = new DvdSubSubCategory(comedyChildrens, "Aquatic")
		comedyChildrensAquatic.setTopSubSubCategoryTitle( "Sponge Bob Squarepants")

		it "Getting top comedy title:",->
			topTitle = comedy.getTopTitle()
			expect("The top title for " + comedy.getAllCategories() + " is " + topTitle).toEqual("The top title for Comedy is Ghost World")

		it "Getting top comedy/childrens title:", ->
			topTitle = comedyChildrens.getTopTitle()
			expect("The top title for " + comedyChildrens.getAllCategories() + " is " + topTitle).toEqual("The top title for Comedy/Childrens is Ghost World")

		it "Getting top comedy/childrens/aquatic title:", ->
			topTitle = comedyChildrensAquatic.getTopTitle()
			expect("The top title for " + comedyChildrensAquatic.getAllCategories() + " is " + topTitle).toEqual("The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants")
