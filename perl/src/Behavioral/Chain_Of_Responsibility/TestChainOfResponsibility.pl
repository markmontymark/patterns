package Behavioral::Chain_Of_Responsibility;


//TestChainOfResponsibility.java - testing the Chain of Responsibility

class TestChainOfResponsibility {
   public static void main(String[] args) {
        String topTitle;
        DvdCategory comedy = new DvdCategory("Comedy");
        comedy.setTopCategoryTitle("Ghost World");
        
        DvdSubCategory comedyChildrens = 
          new DvdSubCategory(comedy, "Childrens");
        
        DvdSubSubCategory comedyChildrensAquatic = 
          new DvdSubSubCategory(comedyChildrens, "Aquatic");
        comedyChildrensAquatic.setTopSubSubCategoryTitle(
          "Sponge Bob Squarepants");

        System.out.println("");
        System.out.println("Getting top comedy title:");
        topTitle = comedy.getTopTitle();
        System.out.println("The top title for " + 
                            comedy.getAllCategories() + 
                            " is " + topTitle);

        System.out.println("");
        System.out.println("Getting top comedy/childrens title:");
        topTitle = comedyChildrens.getTopTitle();
        System.out.println("The top title for " + 
                            comedyChildrens.getAllCategories() + 
                            " is " + topTitle);

        System.out.println("");
        System.out.println(
          "Getting top comedy/childrens/aquatic title:");
        topTitle = comedyChildrensAquatic.getTopTitle();
        System.out.println("The top title for " + 
                            comedyChildrensAquatic.getAllCategories() + 
                            " is " + topTitle);
   }
}