namespace Behavioral.Command {

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Command (aka Action or Transaction) Overview
//An object encapsulates everything needed to execute a method in another object.
//DvdName.java - the Receiver

public class DvdName {  
   private string titleName;  
    
   public DvdName(string titleName) {
       this.setTitleName(titleName);
   }    
  
   public void setTitleName(string titleNameIn) {
       this.titleName = titleNameIn;
   }
   public string getTitleName() {
       return this.titleName;
   }
   
   public void setNameStarsOn() {
       this.setTitleName(this.getTitleName().Replace(' ','*'));
   }
   public void setNameStarsOff() {
       this.setTitleName(this.getTitleName().Replace('*',' '));
   }   
   
   override public string ToString() {
       return ("DVD: " + this.getTitleName());
   }
}


}
