
package prototype


//SaladFork - One of Two Concrete Prototypes extending the AbstractFork Prototype

type SaladFork struct {   // implements Utensil
	Namer
}

func NewSaladFork() *SaladFork {
	return &SaladFork{ Namer{"Salad Fork"} }
}
