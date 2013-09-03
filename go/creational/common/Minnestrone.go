package common

type Minnestrone struct {
	SoupImpl
}

func NewMinnestrone() *Minnestrone {
	return &Minnestrone{ SoupImpl{
   "Minestrone",
   []string{
	"1 Pound tomatos",
	"1/2 cup pasta",
	"1 cup tomato juice",             
	}}}
	
}
