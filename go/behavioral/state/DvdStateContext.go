
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//An object appears to change its' class when the class it passes calls through to switches itself for a related class.
//DvdStateContext.java - the Context

package state


type DvdStateContext struct {  
   Name DvdStateName
}


    
func NewDvdStateContext() *DvdStateContext {
	obj := new(DvdStateContext)
	obj.Name = new(DvdStateNameStars)
	return obj
}

func (this *DvdStateContext) ShowName(nameIn string) string {
	 return this.Name.ShowName(this, nameIn)
}
