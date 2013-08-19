
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Composite Overview
//Assemble groups of objects with the same signature.
//TeaBags - the abstract base class for the composite



package composite


type TeaBagsInterface interface {  
    
   CountTeaBags() int
   Add(tb TeaBagsInterface) bool
   Remove(tb TeaBagsInterface) bool
	SetName(name string)
	GetName () string
	SetParent( tb *TeaBagsInterface)
	GetParent( ) *TeaBagsInterface

}
