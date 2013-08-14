package Behavioral.Chain_Of_Responsibility;


//DvdSubSubCategory.java - the Lowest Class in the Chain

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
           //System.out.println( "no top title in Category/SubCategory/SubSubCategory " + getAllCategories());
           return parent.getTopTitle();
       }
   }
}
