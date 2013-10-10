// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Chain of Responsibility Overview
A method called in one class will move up a class hierarchy until a method is found that can properly handle the call.
TopTitle - the Interface to be implemented by all Classes in the Chain

public interface TopTitle {  
   public String getTopTitle();
   
   public String getAllCategories();
}

DvdCategory - the Highest Class in the Chain

public class DvdCategory implements TopTitle {  
   private String category; 
   private String topCategoryTitle;
    
   public DvdCategory(String category) {
        this.setCategory(category);
   }    
   
   public void setCategory(String categoryIn) {
       this.category = categoryIn;
   }
   public String getCategory() {
       return this.category;
   } 
   public String getAllCategories() {
       return getCategory();
   }
   
   public void setTopCategoryTitle(String topCategoryTitleIn) {
       this.topCategoryTitle = topCategoryTitleIn;
   }
   public String getTopCategoryTitle() {
       return this.topCategoryTitle;
   }
   
   public String getTopTitle() {
       return this.topCategoryTitle;
   }
}

DvdSubCategory - the Middle Class in the Chain

public class DvdSubCategory implements TopTitle {  
   private String subCategory; 
   private String topSubCategoryTitle;
   private DvdCategory parent;
   
   public DvdSubCategory(DvdCategory dvdCategory, String subCategory) {
        this.setSubCategory(subCategory); 
        this.parent = dvdCategory;
   }    
   
   public void setSubCategory(String subCategoryIn) {
       this.subCategory = subCategoryIn;
   }
   public String getSubCategory() {
       return this.subCategory;
   }
   public void setCategory(String categoryIn) {
       parent.setCategory(categoryIn);
   }
   public String getCategory() {
       return parent.getCategory();
   }
   public String getAllCategories() {
       return (getCategory() + "/" + getSubCategory());
   }
   
   public void setTopSubCategoryTitle(String topSubCategoryTitleIn) {
       this.topSubCategoryTitle = topSubCategoryTitleIn;
   }
   public String getTopSubCategoryTitle() {
       return this.topSubCategoryTitle;
   }
   public void setTopCategoryTitle(String topCategoryTitleIn) {
       parent.setTopCategoryTitle(topCategoryTitleIn);
   }
   public String getTopCategoryTitle() {
       return parent.getTopCategoryTitle();
   }
   
   public String getTopTitle() {
       if (null != getTopSubCategoryTitle()) {
           return this.getTopSubCategoryTitle();
       } else {
           System.out.println("no top title in Category/SubCategory " + 
                               getAllCategories());
           return parent.getTopTitle();
       }
   }
}

DvdSubSubCategory - the Lowest Class in the Chain

public class DvdSubSubCategory implements TopTitle {  
   private String subSubCategory; 
   private String topSubSubCategoryTitle;
   private DvdSubCategory parent;
   
   public DvdSubSubCategory(DvdSubCategory dvdSubCategory, 
                            String subCategory) {
        this.setSubSubCategory(subCategory); 
        this.parent = dvdSubCategory;
   }    
   
   public void setSubSubCategory(String subSubCategoryIn) {
       this.subSubCategory = subSubCategoryIn;
   }
   public String getSubSubCategory() {
       return this.subSubCategory;
   } 
   public void setSubCategory(String subCategoryIn) {
       parent.setSubCategory(subCategoryIn);
   }
   public String getSubCategory() {
       return parent.getSubCategory();
   }
   public void setCategory(String categoryIn) {
       parent.setCategory(categoryIn);
   }
   public String getCategory() {
       return parent.getCategory();
   }
   public String getAllCategories() {
       return (getCategory() + "/" + 
               getSubCategory() + "/" + 
               getSubSubCategory());}   
   
   public void setTopSubSubCategoryTitle(
     String topSubSubCategoryTitleIn) {
      this.topSubSubCategoryTitle = topSubSubCategoryTitleIn;
   }
   public String getTopSubSubCategoryTitle() {
       return this.topSubSubCategoryTitle;
   }
   public void setTopSubCategoryTitle(
     String topSubCategoryTitleIn) {
       parent.setTopSubCategoryTitle(topSubCategoryTitleIn);
   }
   public String getTopSubCategoryTitle() {
       return parent.getTopSubCategoryTitle();
   }
   public void setTopCategoryTitle(String topCategoryTitleIn) {
       parent.setTopCategoryTitle(topCategoryTitleIn);
   }
   public String getTopCategoryTitle() {
       return parent.getTopCategoryTitle();
   }

   public String getTopTitle() {
       if (null != getTopSubSubCategoryTitle()) {
           return this.getTopSubSubCategoryTitle();
       } else {
           System.out.println(
             "no top title in Category/SubCategory/SubSubCategory " + 
              getAllCategories());
           return parent.getTopTitle();
       }
   }
}

TestChainOfResponsibility - testing the Chain of Responsibility

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

Test Results

Getting top comedy title:
The top title for Comedy is Ghost World


Getting top comedy/childrens title:
no top title in Category/SubCategory Comedy/Childrens
The top title for Comedy/Childrens is Ghost World


Getting top comedy/childrens/aquatic title:
The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants


