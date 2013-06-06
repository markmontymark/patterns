package Behavioral::Mediator;


//DvdMediator.java - The Mediator

public class DvdMediator {
   private DvdUpcaseTitle dvdUpcaseTitle; 
   private DvdLowercaseTitle dvdLowercaseTitle;    
   
   public void setUpcase(DvdUpcaseTitle dvdUpcaseTitle) {
       this.dvdUpcaseTitle = dvdUpcaseTitle;
   } 
   
   public void setLowercase(DvdLowercaseTitle dvdLowercaseTitle) {
       this.dvdLowercaseTitle = dvdLowercaseTitle;
   }   
   
   public void changeTitle(DvdUpcaseTitle dvdUpcaseTitle) {
       this.dvdLowercaseTitle.resetTitle(dvdUpcaseTitle.getTitle());
   }
   
   public void changeTitle(DvdLowercaseTitle dvdLowercaseTitle) {
       this.dvdUpcaseTitle.resetTitle(dvdLowercaseTitle.getTitle());
   }   
}