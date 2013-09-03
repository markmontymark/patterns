package common

type VegetableSoup struct {
	SoupImpl
}

func NewVegetableSoup() *VegetableSoup {
	return &VegetableSoup{ SoupImpl{ 
   "Vegetable Soup",
   []string{
	"1 cup bullion",
	"1/4 cup carrots",
	"1/4 cup potatoes",
	}}}
}
