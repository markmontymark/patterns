package Behavioral.Command;

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Command (aka Action or Transaction) Overview
//An object encapsulates everything needed to execute a method in another object.
//DvdName - the Receiver

public class DvdName {  
   private String titleName;  
    
   public DvdName(String titleName) {
       this.setTitleName(titleName);
   }    
  
   public final void setTitleName(String titleNameIn) {
       this.titleName = titleNameIn;
   }
   public final String getTitleName() {
       return this.titleName;
   }
   
   public void setNameStarsOn() {
       this.setTitleName(this.getTitleName().replace(' ','*'));
   }
   public void setNameStarsOff() {
       this.setTitleName(this.getTitleName().replace('*',' '));
   }   
   
   public String toString() {
       return ("DVD: " + this.getTitleName());
   }
}