package prototype


//SoupSpoon - One of Two Concrete Prototypes extending the AbstractSpoon Prototype

type SoupSpoon struct {   // implements Utensil
	name string
}

func (this *SoupSpoon) SetName ( name string ) {
	this.name = name
}

func (this *SoupSpoon) GetName ( ) string {
	return this.name
}

func NewSoupSpoon() Utensil {
	obj := new(SoupSpoon)
	obj.SetName("Soup Spoon")
	return obj
}
