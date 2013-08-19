package iterator

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Iterator (aka Cursor) Overview
//One object can traverse all of the elements of another object.
//DvdListIterator - the Iterator Interface

type DvdListIterator interface {
   First()
   Next()  
   HasNext() bool
   CurrentItem() string
}
