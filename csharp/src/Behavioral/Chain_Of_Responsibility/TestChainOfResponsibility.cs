namespace Behavioral.Chain_Of_Responsibility {

using System;
using tap;

//TestChainOfResponsibility.java - testing the Chain of Responsibility

class TestChainOfResponsibility 
{
	static void Main() 
	{
		Tapper tapper = new Tapper();
		String topTitle;
		DvdCategory comedy = new DvdCategory("Comedy");
		comedy.setTopCategoryTitle("Ghost World");

		DvdSubCategory comedyChildrens = new DvdSubCategory(comedy, "Childrens");

		DvdSubSubCategory comedyChildrensAquatic = new DvdSubSubCategory(comedyChildrens, "Aquatic");
		comedyChildrensAquatic.setTopSubSubCategoryTitle( "Sponge Bob Squarepants");

		topTitle = comedy.getTopTitle();
		tapper.test( "DvdCategory Test", 
			("The top title for " + comedy.getAllCategories() + " is " + topTitle),
			"The top title for Comedy is Ghost World");

		String topTitle2 = comedyChildrens.getTopTitle();
		tapper.test("DvdSubCategory top title test", ("The top title for " + comedyChildrens.getAllCategories() + " is " + topTitle2) , "The top title for Comedy/Childrens is Ghost World");

		String topTitle3 = comedyChildrensAquatic.getTopTitle();
		tapper.test("DvdSubSubCategory top title test ", 
			"The top title for " + comedyChildrensAquatic.getAllCategories() + " is " + topTitle3 , 
			"The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants"
		);
		tapper.done();
	}
}


}
