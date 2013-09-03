package common

type PastaFazul struct {
	SoupImpl
}

func NewPastaFazul() *PastaFazul {
	return &PastaFazul{ SoupImpl{ 
   "Pasta Fazul",
   []string {
	"1 Pound tomatos",
	"1/2 cup pasta",
	"1/2 cup diced carrots",
	"1 cup tomato juice",
	}}}
}
