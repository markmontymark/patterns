package facade

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Facade Overview
//One class has a method that performs a complex process calling several other classes.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//FacadeCuppaMaker - the Facade

type FacadeCuppaMaker struct {  
   teaBagIsSteeped bool
}

func NewFacadeCuppaMaker () *FacadeCuppaMaker {
	return new(FacadeCuppaMaker)
}
    
func (this *FacadeCuppaMaker) MakeACuppa() *FacadeTeaCup {
	cup := NewFacadeTeaCup()
	teaBag := new(FacadeTeaBag)
	water := NewFacadeWater()
	cup.AddFacadeTeaBag(teaBag)
	water.BoilFacadeWater()
	cup.AddFacadeWater(water)
	cup.SteepTeaBag()
	return cup
}
