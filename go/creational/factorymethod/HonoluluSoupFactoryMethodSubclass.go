
//HonoluluSoupFactoryMethodSubclass - One of Two Subclass Factory Methods

package factorymethod

import (
	"../common"
)

type HonoluluSoupFactoryMethodSubclass struct {  //implements SoupFactoryMethod {
	BaseSoupFactoryMethod
}

func NewHonoluluSoupFactoryMethodSubclass () *HonoluluSoupFactoryMethodSubclass {
	return new(HonoluluSoupFactoryMethodSubclass)
}

func (this *HonoluluSoupFactoryMethodSubclass) MakeBuffetName() string {
	return "Honolulu Soup Buffet"
}

func (this *HonoluluSoupFactoryMethodSubclass) MakeClamChowder() common.Soup {
	return common.NewHonoluluClamChowder()
}

func (this *HonoluluSoupFactoryMethodSubclass) MakeFishChowder() common.Soup {
	return common.NewHonoluluFishChowder()
}

