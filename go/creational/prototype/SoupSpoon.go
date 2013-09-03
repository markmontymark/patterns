package prototype


//SoupSpoon - One of Two Concrete Prototypes extending the AbstractSpoon Prototype

type SoupSpoon struct {   // implements Utensil
	Namer
}

func NewSoupSpoon() *SoupSpoon {
	return &SoupSpoon{ Namer{ "Soup Spoon"} }
}
