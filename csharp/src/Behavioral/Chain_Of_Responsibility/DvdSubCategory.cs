//DvdSubCategory.cs - the Middle Class in the Chain


namespace Behavioral.Chain_Of_Responsibility {


using System;


public class DvdSubCategory : TopTitle {  
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
           Console.WriteLine("no top title in Category/SubCategory " + 
                               getAllCategories());
           return parent.getTopTitle();
       }
   }
}

}
