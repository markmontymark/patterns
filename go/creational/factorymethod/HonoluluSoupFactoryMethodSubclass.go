
//HonoluluSoupFactoryMethodSubclass - One of Two Subclass Factory Methods

package factorymethod

import (
	"../common"
)

type HonoluluSoupFactoryMethodSubclass struct {  //implements SoupFactoryMethod {
}

func NewHonoluluSoupFactoryMethodSubclass () *HonoluluSoupFactoryMethodSubclass {
	return new(HonoluluSoupFactoryMethodSubclass)
}

func (this *HonoluluSoupFactoryMethodSubclass) MakeBuffetName() string {
	return "Honolulu Soup Buffet"
}

func (this *HonoluluSoupFactoryMethodSubclass) MakeClamChowder() *common.SoupImpl {
	return common.NewHonoluluClamChowder()
}

func (this *HonoluluSoupFactoryMethodSubclass) MakeFishChowder() *common.SoupImpl {
	return common.NewHonoluluFishChowder()
}

func (this *HonoluluSoupFactoryMethodSubclass) MakeSoupBuffet() *common.SoupBuffet {
	return common.NewSoupBuffet()
}


func (this *HonoluluSoupFactoryMethodSubclass) MakeChickenSoup() *common.SoupImpl {
	return common.NewChickenSoup()
}

func (this *HonoluluSoupFactoryMethodSubclass) MakeMinnestrone()*common.SoupImpl {
	return common.NewMinnestrone()
}

func (this *HonoluluSoupFactoryMethodSubclass) MakePastaFazul() *common.SoupImpl {
	return common.NewPastaFazul()
}

func (this *HonoluluSoupFactoryMethodSubclass) MakeTofuSoup() *common.SoupImpl {
	return common.NewTofuSoup()
}

func (this *HonoluluSoupFactoryMethodSubclass) MakeVegetableSoup()*common.SoupImpl {
	return common.NewVegetableSoup()
}
