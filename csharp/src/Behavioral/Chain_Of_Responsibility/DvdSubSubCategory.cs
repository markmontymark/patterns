namespace Behavioral.Chain_Of_Responsibility
{

using System;

//DvdSubSubCategory.java - the Lowest Class in the Chain

public class DvdSubSubCategory : TopTitle {  
   private string subSubCategory; 
   private string topSubSubCategoryTitle;
   private DvdSubCategory parent;
   
   public DvdSubSubCategory(DvdSubCategory dvdSubCategory, 
                            string subCategory) {
        this.setSubSubCategory(subCategory); 
        this.parent = dvdSubCategory;
   }    
   
   void setSubSubCategory(String subSubCategoryIn) {
       this.subSubCategory = subSubCategoryIn;
   }
   string getSubSubCategory() {
       return this.subSubCategory;
   } 
   void setSubCategory(String subCategoryIn) {
       parent.setSubCategory(subCategoryIn);
   }
   string getSubCategory() {
       return parent.getSubCategory();
   }
   void setCategory(String categoryIn) {
       parent.setCategory(categoryIn);
   }
   string getCategory() {
       return parent.getCategory();
   }
   public string getAllCategories() {
       return (getCategory() + "/" + 
               getSubCategory() + "/" + 
               getSubSubCategory());}   
   
   public void setTopSubSubCategoryTitle(
     string topSubSubCategoryTitleIn) {
      this.topSubSubCategoryTitle = topSubSubCategoryTitleIn;
   }
   string getTopSubSubCategoryTitle() {
       return this.topSubSubCategoryTitle;
   }
   void setTopSubCategoryTitle(
     string topSubCategoryTitleIn) {
       parent.setTopSubCategoryTitle(topSubCategoryTitleIn);
   }
   string getTopSubCategoryTitle() {
       return parent.getTopSubCategoryTitle();
   }
   void setTopCategoryTitle(String topCategoryTitleIn) {
       parent.setTopCategoryTitle(topCategoryTitleIn);
   }
   string getTopCategoryTitle() {
       return parent.getTopCategoryTitle();
   }

   public string getTopTitle() {
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
