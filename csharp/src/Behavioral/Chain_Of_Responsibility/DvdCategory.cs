//DvdCategory.cs - the Highest Class in the Chain

namespace Behavioral.Chain_Of_Responsibility {

using System;

public class DvdCategory : TopTitle {  
   private string category; 
   private string topCategoryTitle;
    
   public DvdCategory(String category) {
        this.setCategory(category);
   }    
   
   public void setCategory(String categoryIn) {
       this.category = categoryIn;
   }
   public string getCategory() {
       return this.category;
   } 
   public string getAllCategories() {
       return getCategory();
   }
   
   public void setTopCategoryTitle(String topCategoryTitleIn) {
       this.topCategoryTitle = topCategoryTitleIn;
   }
   public string getTopCategoryTitle() {
       return this.topCategoryTitle;
   }
   
   public string getTopTitle() {
       return this.topCategoryTitle;
   }
}

}
