package common

type FishChowder struct {
	SoupImpl
}

func NewFishChowder() *FishChowder {
   return &FishChowder{ SoupImpl{ "FishChowder", 
   []string{
	"1 Pound Fresh fish",
	"1 cup fruit or vegetables",
	"1/2 cup milk",
	"1/4 cup butter",
	"1/4 cup chips",
	}}}
}
