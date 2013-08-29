package Behavioral.Chain_Of_Responsibility;

import tap.*;

//TestChainOfResponsibility - testing the Chain of Responsibility

class TestChainOfResponsibility {
	public static void main(String[] args) {
		Tapper tap = new Tapper();
        final String topTitle;
        final DvdCategory comedy = new DvdCategory("Comedy");
        comedy.setTopCategoryTitle("Ghost World");
        
        DvdSubCategory comedyChildrens = 
          new DvdSubCategory(comedy, "Childrens");
        
        DvdSubSubCategory comedyChildrensAquatic = 
          new DvdSubSubCategory(comedyChildrens, "Aquatic");
        comedyChildrensAquatic.setTopSubSubCategoryTitle(
          "Sponge Bob Squarepants");

        topTitle = comedy.getTopTitle();
			tap.test( "DvdCategory Test", new TestCase(){ public void test(){
				  assert ("The top title for " + comedy.getAllCategories() + " is " + topTitle).equals(
							 "The top title for Comedy is Ghost World");
			} });

        System.out.println("");
        System.out.println("Getting top comedy/childrens title:");
        final String topTitle2 = comedyChildrens.getTopTitle();
        System.out.println("The top title for " + 
                            comedyChildrens.getAllCategories() + 
                            " is " + topTitle2);

        System.out.println("");
        System.out.println(
          "Getting top comedy/childrens/aquatic title:");
        final String topTitle3 = comedyChildrensAquatic.getTopTitle();
        System.out.println("The top title for " + 
                            comedyChildrensAquatic.getAllCategories() + 
                            " is " + topTitle3);
		tap.done();
   }
}
