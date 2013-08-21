package prototype

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Java Design Patterns Prototype
//Prototype Overview
//Make new objects by cloning the objects which you set as prototypes
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//PrototypeFactory - a Factory for Prototypes

type PrototypeFactory struct {  
    prototypeSpoon Utensil
    prototypeFork Utensil
}
    
func (this *PrototypeFactory) MakeSpoon() Utensil {
	obj := this.prototypeSpoon
	return obj
}

func (this *PrototypeFactory) MakeFork() Utensil {
	obj := this.prototypeFork
	return obj
}
