namespace Behavioral.Mediator {

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Java Design Patterns Mediator
//Mediator Overview
//Passes communication between two or more objects.
//DvdTitle.java - the Abstract Colleague or Mediatee

public abstract class DvdTitle {  
   private string title; 
   
   public void setTitle(string titleIn) {
       this.title = titleIn;
   }
   public string getTitle() {
       return this.title;
   }
}

}
