// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
// Original Author: Larry Truett
// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
Java Design Patterns Mediator
Mediator Overview
Passes communication between two or more objects.
DvdTitle.java - the Abstract Colleague or Mediatee

public abstract class DvdTitle {  
   private String title; 
   
   public void setTitle(String titleIn) {
       this.title = titleIn;
   }
   public String getTitle() {
       return this.title;
   }
}

DvdLowercaseTitle.java - One of Two Concrete Colleagues or Mediatees

public class DvdLowercaseTitle extends DvdTitle {
   private String LowercaseTitle;
   private DvdMediator dvdMediator;
    
   public DvdLowercaseTitle(String title, DvdMediator dvdMediator) {
       this.setTitle(title);
       resetTitle();
       this.dvdMediator = dvdMediator;
       this.dvdMediator.setLowercase(this);
   }    
   
   public DvdLowercaseTitle(DvdTitle dvdTitle, 
                            DvdMediator dvdMediator) {
       this(dvdTitle.getTitle(), dvdMediator);
   }     
   
   public void resetTitle() {
       this.setLowercaseTitle(this.getTitle().toLowerCase());
   }
   public void resetTitle(String title) {
       this.setTitle(title);
       this.resetTitle();
   }
   
   public void setSuperTitleLowercase() {
       this.setTitle(this.getLowercaseTitle());
       dvdMediator.changeTitle(this);
   }
   
   public String getLowercaseTitle() {
       return LowercaseTitle;
   }
   private void setLowercaseTitle(String LowercaseTitle) {
       this.LowercaseTitle = LowercaseTitle;
   }
}

DvdUpcaseTitle.java - Two of Two Concrete Colleagues or Mediatees

public class DvdUpcaseTitle extends DvdTitle {  
   private String upcaseTitle;
   private DvdMediator dvdMediator;
    
   public DvdUpcaseTitle(String title, 
                         DvdMediator dvdMediator) {
       this.setTitle(title);
       resetTitle();
       this.dvdMediator = dvdMediator;
       this.dvdMediator.setUpcase(this);
   }    
   
   public DvdUpcaseTitle(DvdTitle dvdTitle, 
                         DvdMediator dvdMediator) {
       this(dvdTitle.getTitle(), dvdMediator);
   }       
   
   public void resetTitle() {
       this.setUpcaseTitle(this.getTitle().toUpperCase());
   }
   public void resetTitle(String title) {
       this.setTitle(title);
       this.resetTitle();
   }    
   
   public void setSuperTitleUpcase() {
       this.setTitle(this.getUpcaseTitle());
       dvdMediator.changeTitle(this);       
   }
   
   public String getUpcaseTitle() {
      return upcaseTitle;
   }
   private void setUpcaseTitle(String upcaseTitle) {
       this.upcaseTitle = upcaseTitle;
   }
}

DvdMediator.java - The Mediator

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

TestDvdMediator.java - testing the Mediator

class TestDvdMediator {            
    
   public static void main(String[] args) {
       DvdMediator dvdMediator = new DvdMediator();
       DvdLowercaseTitle dvdLower = 
         new DvdLowercaseTitle("Mulholland Dr.", dvdMediator);
       DvdUpcaseTitle dvdUp = 
         new DvdUpcaseTitle(dvdLower, dvdMediator);
       
       System.out.println("Lowercase LC title :" + 
                           dvdLower.getLowercaseTitle());
       System.out.println("Lowercase super title :" + 
                           dvdLower.getTitle());   
       System.out.println("Upcase UC title :" + 
                           dvdUp.getUpcaseTitle());
       System.out.println("Upcase super title :" + 
                           dvdUp.getTitle());   
       
       dvdLower.setSuperTitleLowercase();
       
       System.out.println(" ");
       System.out.println("After Super set to LC");
       System.out.println("Lowercase LC title :" + 
                           dvdLower.getLowercaseTitle());
       System.out.println("Lowercase super title :" + 
                           dvdLower.getTitle());
       System.out.println("Upcase UC title :" + 
                           dvdUp.getUpcaseTitle());
       System.out.println("Upcase super title :" + 
                           dvdUp.getTitle());
   }
}      

Test Results

Lowercase LC title :mulholland dr.
Lowercase super title :Mulholland Dr.
Upcase UC title :MULHOLLAND DR.
Upcase super title :Mulholland Dr.
 
After Super set to LC
Lowercase LC title :mulholland dr.
Lowercase super title :mulholland dr.
Upcase UC title :MULHOLLAND DR.
Upcase super title :mulholland dr.




