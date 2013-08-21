
package prototype


//SaladSpoon - One of Two Concrete Prototypes extending the AbstractSpoon Prototype

type SaladSpoon struct {   // implements Utensil
	name string
}

func (this *SaladSpoon) SetName ( name string ) {
	this.name = name
}

func (this *SaladSpoon) GetName ( ) string {
	return this.name
}

func NewSaladSpoon() Utensil {
	obj := new(SaladSpoon)
	obj.SetName("Salad Spoon")
	return obj
}
