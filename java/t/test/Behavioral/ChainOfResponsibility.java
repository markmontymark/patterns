package test.Behavioral;

import tap.*;
import Behavioral.Chain_Of_Responsibility.*;


class ChainOfResponsibility {
	public static void main(String[] args) {
		Tapper tap = new Tapper();
        final String topTitle;
        final DvdCategory comedy = new DvdCategory("Comedy");
        comedy.setTopCategoryTitle("Ghost World");
        
        final DvdSubCategory comedyChildrens = 
          new DvdSubCategory(comedy, "Childrens");
        
        final DvdSubSubCategory comedyChildrensAquatic = 
          new DvdSubSubCategory(comedyChildrens, "Aquatic");
        comedyChildrensAquatic.setTopSubSubCategoryTitle(
          "Sponge Bob Squarepants");

        topTitle = comedy.getTopTitle();
			tap.test( "DvdCategory Test", new TestCase(){ void test(){
				  assert ("The top title for " + comedy.getAllCategories() + " is " + topTitle).equals(
							 "The top title for Comedy is Ghost World");
			} });

        final String topTitle2 = comedyChildrens.getTopTitle();
			tap.test( "DvdSubCategory Test", new TestCase(){ void test(){
			  assert ("The top title for " + comedyChildrens.getAllCategories() + " is " + topTitle2).equals(
			  			 "The top title for Comedy/Childrens is GhostWorld");
			}});


        final String topTitle3 = comedyChildrensAquatic.getTopTitle();
			tap.test( "DvdSubSubCategory Test", new TestCase(){ void test(){
        		assert ("The top title for " + comedyChildrensAquatic.getAllCategories() + " is " + topTitle3).equals(
        			"The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants");
			}});
		tap.done();
   }
}
