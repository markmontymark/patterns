//BostonSoupFactoryMethodSubclass - One of Two Subclass Factory Methods

package factorymethod

import (
	"../common"
)

type BostonSoupFactoryMethodSubclass struct {  //implements SoupFactoryMethod {
}

func NewBostonSoupFactoryMethodSubclass () *BostonSoupFactoryMethodSubclass {
	return new(BostonSoupFactoryMethodSubclass)
}

func (this *BostonSoupFactoryMethodSubclass) MakeBuffetName() string {
	return "Boston Soup Buffet"
}

func (this *BostonSoupFactoryMethodSubclass) MakeClamChowder() *common.SoupImpl {
	return common.NewBostonClamChowder()
}

func (this *BostonSoupFactoryMethodSubclass) MakeFishChowder() *common.SoupImpl {
	return common.NewBostonFishChowder()
}

func (this *BostonSoupFactoryMethodSubclass) MakeSoupBuffet() *common.SoupBuffet {
	return common.NewSoupBuffet()
}


func (this *BostonSoupFactoryMethodSubclass) MakeChickenSoup() *common.SoupImpl {
	return common.NewChickenSoup()
}

func (this *BostonSoupFactoryMethodSubclass) MakeMinnestrone()*common.SoupImpl {
	return common.NewMinnestrone()
}

func (this *BostonSoupFactoryMethodSubclass) MakePastaFazul() *common.SoupImpl {
	return common.NewPastaFazul()
}

func (this *BostonSoupFactoryMethodSubclass) MakeTofuSoup() *common.SoupImpl {
	return common.NewTofuSoup()
}

func (this *BostonSoupFactoryMethodSubclass) MakeVegetableSoup()*common.SoupImpl {
	return common.NewVegetableSoup()
}
