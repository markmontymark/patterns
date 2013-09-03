//BostonSoupFactoryMethodSubclass - One of Two Subclass Factory Methods

package factorymethod

import (
	"../common"
)

type BaseSoupFactoryMethod struct {  //implements SoupFactoryMethod {
}

func (this *BaseSoupFactoryMethod) MakeSoupBuffet() *common.SoupBuffet {
	return common.NewSoupBuffet()
}

func (this *BaseSoupFactoryMethod) MakeClamChowder() common.Soup {
	return common.NewClamChowder()
}

func (this *BaseSoupFactoryMethod) MakeFishChowder() common.Soup {
	return common.NewFishChowder()
}

func (this *BaseSoupFactoryMethod) MakeChickenSoup() common.Soup {
	return common.NewChickenSoup()
}

func (this *BaseSoupFactoryMethod) MakeTofuSoup() common.Soup {
	return common.NewTofuSoup()
}

func (this *BaseSoupFactoryMethod) MakeVegetableSoup() common.Soup {
	return common.NewVegetableSoup()
}

func (this *BaseSoupFactoryMethod) MakePastaFazul() common.Soup {
	return common.NewPastaFazul()
}

func (this *BaseSoupFactoryMethod) MakeMinnestrone() common.Soup {
	return common.NewMinnestrone()
}


