namespace Behavioral.Visitor {

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Visitor (uses double-dispatch) Overview
//One or more related classes have the same method, which calls a method specific for themselves in another class.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//TitleBlurbVisitor.java - the abstract Visitor

public abstract class TitleBlurbVisitor {
   string titleBlurb;
   public void setTitleBlurb(string blurbIn) {
       this.titleBlurb = blurbIn;
   }
   public string getTitleBlurb() {
       return this.titleBlurb;
   }
    
   public abstract void visit(BookInfo bookInfo);
   public abstract void visit(DvdInfo dvdInfo);   
   public abstract void visit(GameInfo gameInfo);
}   

}
