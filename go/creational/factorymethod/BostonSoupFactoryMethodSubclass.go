//BostonSoupFactoryMethodSubclass - One of Two Subclass Factory Methods

package factorymethod

import (
	"../common"
)

type BostonSoupFactoryMethodSubclass struct {  //implements SoupFactoryMethod {
	BaseSoupFactoryMethod
}

func NewBostonSoupFactoryMethodSubclass () *BostonSoupFactoryMethodSubclass {
	return &BostonSoupFactoryMethodSubclass{ BaseSoupFactoryMethod{} }
}

func (this *BostonSoupFactoryMethodSubclass) MakeBuffetName() string {
	return "Boston Soup Buffet"
}

func (this *BostonSoupFactoryMethodSubclass) MakeClamChowder() common.Soup {
	return common.NewBostonClamChowder()
}

func (this *BostonSoupFactoryMethodSubclass) MakeFishChowder() common.Soup {
	return common.NewBostonFishChowder()
}

