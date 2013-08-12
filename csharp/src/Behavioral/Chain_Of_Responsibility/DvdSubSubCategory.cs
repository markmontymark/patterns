namespace Behavioral.Chain_Of_Responsibility
{

using System;

//DvdSubSubCategory.java - the Lowest Class in the Chain

public class DvdSubSubCategory : TopTitle {  
   private String subSubCategory; 
   private String topSubSubCategoryTitle;
   private DvdSubCategory parent;
   
   public DvdSubSubCategory(DvdSubCategory dvdSubCategory, 
                            String subCategory) {
        this.setSubSubCategory(subCategory); 
        this.parent = dvdSubCategory;
   }    
   
   void setSubSubCategory(String subSubCategoryIn) {
       this.subSubCategory = subSubCategoryIn;
   }
   String getSubSubCategory() {
       return this.subSubCategory;
   } 
   void setSubCategory(String subCategoryIn) {
       parent.setSubCategory(subCategoryIn);
   }
   String getSubCategory() {
       return parent.getSubCategory();
   }
   void setCategory(String categoryIn) {
       parent.setCategory(categoryIn);
   }
   String getCategory() {
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
   String getTopSubSubCategoryTitle() {
       return this.topSubSubCategoryTitle;
   }
   void setTopSubCategoryTitle(
     String topSubCategoryTitleIn) {
       parent.setTopSubCategoryTitle(topSubCategoryTitleIn);
   }
   String getTopSubCategoryTitle() {
       return parent.getTopSubCategoryTitle();
   }
   void setTopCategoryTitle(String topCategoryTitleIn) {
       parent.setTopCategoryTitle(topCategoryTitleIn);
   }
   String getTopCategoryTitle() {
       return parent.getTopCategoryTitle();
   }

   public String getTopTitle() {
       if (null != getTopSubSubCategoryTitle()) {
           return this.getTopSubSubCategoryTitle();
       } else {
           Console.WriteLine(
             "no top title in Category/SubCategory/SubSubCategory " + 
              getAllCategories());
           return parent.getTopTitle();
       }
   }
}

}
