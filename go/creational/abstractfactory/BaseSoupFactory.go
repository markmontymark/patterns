//BaseSoupFactory - One of Two concrete factories extending the abstract factory

package abstractfactory

import "../common"

type BaseSoupFactory struct { // implements AbstractSoupFactory
	factoryLocation string
}

func (this *BaseSoupFactory) GetFactoryLocation() string {
	return this.factoryLocation
}

func (this *BaseSoupFactory) MakeChickenSoup() common.Soup {
	return common.NewChickenSoup()
}

func (this *BaseSoupFactory) MakeClamChowder() common.Soup {
	return common.NewClamChowder()
}

func (this *BaseSoupFactory) MakeFishChowder() common.Soup {
	return common.NewFishChowder()
}

func (this *BaseSoupFactory) MakeMinnestrone() common.Soup {
	return common.NewMinnestrone()
}

func (this *BaseSoupFactory) MakePastaFazul() common.Soup {
	return common.NewPastaFazul()
}

func (this *BaseSoupFactory) MakeTofuSoup() common.Soup {
	return common.NewTofuSoup()
}

func (this *BaseSoupFactory) MakeVegetableSoup() common.Soup {
	return common.NewVegetableSoup()
}


