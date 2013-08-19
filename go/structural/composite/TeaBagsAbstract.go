
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Composite Overview
//Assemble groups of objects with the same signature.
//TeaBags - the abstract base class for the composite



package composite


type TeaBagsAbstract struct {  
   TeabagsList []TeaBagsInterface
   parent *TeaBagsInterface
   name string
}

func (this *TeaBagsAbstract) SetParent(parentIn *TeaBagsInterface ) {
	this.parent = parentIn
}

func (this *TeaBagsAbstract ) GetParent() *TeaBagsInterface {
	return this.parent
}
   
func (this *TeaBagsAbstract ) SetName(nameIn string) {
	this.name = nameIn
}

func (this *TeaBagsAbstract ) GetName() string {
	return this.name
}
