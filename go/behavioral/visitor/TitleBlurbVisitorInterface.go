package visitor

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Visitor (uses double-dispatch) Overview
//One or more related classes have the same method, which calls a method specific for themselves in another class.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//TitleBlurbVisitor - the abstract Visitor

type TitleBlurbVisitorInterface interface {
   VisitGame ( info *GameInfo )
   VisitBook ( info *BookInfo )
   VisitDvd( info *DvdInfo )
}   
