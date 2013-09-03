package common

type BostonFishChowder struct {
	FishChowder
}

func NewBostonFishChowder() *BostonFishChowder {
   return &BostonFishChowder{ FishChowder{ SoupImpl{
	"ScrodFishChowder",
   []string {
	"1 Pound Fresh Scrod",
	"1 cup corn",
	"1/2 cup heavy cream",
	"1/4 cup butter",
	"1/4 cup potato chips",
	}}}}
}
