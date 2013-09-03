
package prototype


//SaladSpoon - One of Two Concrete Prototypes extending the AbstractSpoon Prototype

type SaladSpoon struct {   // implements Utensil
	Namer
}

func NewSaladSpoon() *SaladSpoon {
	return &SaladSpoon{ Namer{ "Salad Spoon" } }
}
