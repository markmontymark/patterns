//BostonConcreteSoupFactory - One of Two concrete factories extending the abstract factory

package abstractfactory

import "../common"

type BostonConcreteSoupFactory struct {
	factoryLocation string
}

func NewBostonConcreteSoupFactory () *BostonConcreteSoupFactory {
	obj := new(BostonConcreteSoupFactory)
	obj.factoryLocation = "Boston"
	return obj
}

func (this *BostonConcreteSoupFactory) GetFactoryLocation() string {
	return this.factoryLocation
}

func (this *BostonConcreteSoupFactory) MakeChickenSoup() *common.SoupImpl {
	return common.NewChickenSoup()
}

func (this *BostonConcreteSoupFactory) MakeClamChowder() *common.SoupImpl {
	return common.NewBostonClamChowder()
}

func (this *BostonConcreteSoupFactory) MakeFishChowder() *common.SoupImpl {
	return common.NewBostonFishChowder()
}

func (this *BostonConcreteSoupFactory) MakeMinnestrone() *common.SoupImpl {
	return common.NewMinnestrone()
}

func (this *BostonConcreteSoupFactory) MakePastaFazul() *common.SoupImpl {
	return common.NewPastaFazul()
}

func (this *BostonConcreteSoupFactory) MakeTofuSoup() *common.SoupImpl {
	return common.NewTofuSoup()
}

func (this *BostonConcreteSoupFactory) MakeVegetableSoup() *common.SoupImpl {
	return common.NewVegetableSoup()
}


