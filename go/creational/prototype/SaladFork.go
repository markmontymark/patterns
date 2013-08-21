
package prototype


//SaladFork - One of Two Concrete Prototypes extending the AbstractFork Prototype

type SaladFork struct {   // implements Utensil
	name string
}

func (this *SaladFork) SetName ( name string ) {
	this.name = name
}

func (this *SaladFork) GetName ( ) string {
	return this.name
}

func NewSaladFork() Utensil {
	obj := new(SaladFork)
	obj.SetName("Salad Fork")
	return obj
}
