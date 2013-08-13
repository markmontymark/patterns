//DvdSubCategory.cs - the Middle Class in the Chain


namespace Behavioral.Chain_Of_Responsibility {


using System;


public class DvdSubCategory : TopTitle {  
   private string subCategory; 
   private string topSubCategoryTitle;
   private DvdCategory parent;
   
   public DvdSubCategory(DvdCategory dvdCategory, string subCategory) {
        this.setSubCategory(subCategory); 
        this.parent = dvdCategory;
   }    
   
   public void setSubCategory(String subCategoryIn) {
       this.subCategory = subCategoryIn;
   }
   public string getSubCategory() {
       return this.subCategory;
   }
   public void setCategory(String categoryIn) {
       parent.setCategory(categoryIn);
   }
   public string getCategory() {
       return parent.getCategory();
   }
   public string getAllCategories() {
       return (getCategory() + "/" + getSubCategory());
   }
   
   public void setTopSubCategoryTitle(String topSubCategoryTitleIn) {
       this.topSubCategoryTitle = topSubCategoryTitleIn;
   }
   public string getTopSubCategoryTitle() {
       return this.topSubCategoryTitle;
   }
   public void setTopCategoryTitle(String topCategoryTitleIn) {
       parent.setTopCategoryTitle(topCategoryTitleIn);
   }
   public string getTopCategoryTitle() {
       return parent.getTopCategoryTitle();
   }
   
   public string getTopTitle() {
       if (null != getTopSubCategoryTitle()) {
           return this.getTopSubCategoryTitle();
       } else {
           return parent.getTopTitle();
       }
   }
}

}
