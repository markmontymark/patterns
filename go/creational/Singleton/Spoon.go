package singleton

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Java Design Patterns Singleton
//Singleton Overview
//A class distributes the only instance of itself.

//In this example SingleSpoon class holds one instance of SingleSpoon in "private static SingleSpoon theSpoon". The SingleSpoon class determines the spoons availability using "private static boolean theSpoonIsAvailable = true;" The first time SingleSpoon.getTheSpoon() is called it creates an instance of a SingleSpoon. The SingleSpoon can not be distributed again until it is returned with SingleSpoon.returnTheSpoon().

//If you were to create a spoon "pool" you would have the same basic logic as shown, however multiple spoons would be distributed. The variable theSpoon would hold an array or collection of spoons. The variable theSpoonIsAvaialable would become a counter of the number of available spoons.

//Please also note that this example is not thread safe. I think that to make it thread safe all you would need is to make the getTheSpoon() method synchronized. Many thanks to Brian K. for pointing this out.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//SingleSpoon - a Singleton


type Spoon struct {  
   IsAvailable bool
   InUse bool
}

var instance *Spoon = nil
  
func NewSpoon() *Spoon {
	if instance == nil {
		instance = new(Spoon)
		instance.IsAvailable = true
		instance.InUse = false
		return instance

	} else if instance.IsAvailable {
		return instance
	}

	return nil
} 

func (this *Spoon) UseTheSpoon() bool {
	if this.IsAvailable {
		this.IsAvailable = false
		this.InUse = true
		return true
	} else if ! this.InUse {
		this.InUse = true
		return true	
	}
	
	return false	
}
    
func (this *Spoon) CleanTheSpoon() bool {
	if this.InUse {
		this.InUse = false
		return true
	}
	return false
}

func (this *Spoon) ReturnTheSpoon() bool {
	if this == instance {
		instance = nil
		return true
	}
	return false
}
