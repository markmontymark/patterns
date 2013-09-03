package common

type HonoluluFishChowder struct {
	FishChowder
}

func NewHonoluluFishChowder() *HonoluluFishChowder {
   return &HonoluluFishChowder{ FishChowder{ SoupImpl{
	"OpakapakaFishChowder",
   []string{
		"1 Pound Fresh Opakapaka Fish",
		"1 cup pineapple chunks",
		"1/2 cup coconut milk",
		"1/4 cup SPAM",
		"1/4 cup taro chips",
	}}}}
}
