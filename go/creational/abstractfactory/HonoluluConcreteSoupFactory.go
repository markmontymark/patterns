package abstractfactory

import "../common"

type HonoluluConcreteSoupFactory struct {
	factoryLocation string
}

func NewHonoluluConcreteSoupFactory () *HonoluluConcreteSoupFactory {
	obj := new(HonoluluConcreteSoupFactory)
	obj.factoryLocation = "Honolulu"
	return obj
}

func (this *HonoluluConcreteSoupFactory) GetFactoryLocation() string {
	return this.factoryLocation
}

func (this *HonoluluConcreteSoupFactory) MakeChickenSoup() *common.SoupImpl {
	return common.NewChickenSoup()
}

func (this *HonoluluConcreteSoupFactory) MakeClamChowder() *common.SoupImpl {
	return common.NewHonoluluClamChowder()
}

func (this *HonoluluConcreteSoupFactory) MakeFishChowder() *common.SoupImpl {
	return common.NewHonoluluFishChowder()
}

func (this *HonoluluConcreteSoupFactory) MakeMinnestrone() *common.SoupImpl {
	return common.NewMinnestrone()
}

func (this *HonoluluConcreteSoupFactory) MakePastaFazul() *common.SoupImpl {
	return common.NewPastaFazul()
}

func (this *HonoluluConcreteSoupFactory) MakeTofuSoup() *common.SoupImpl {
	return common.NewTofuSoup()
}

func (this *HonoluluConcreteSoupFactory) MakeVegetableSoup() *common.SoupImpl {
	return common.NewVegetableSoup()
}


