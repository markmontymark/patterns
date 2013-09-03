//BostonConcreteSoupFactory - One of Two concrete factories extending the abstract factory

package abstractfactory

import "../common"

type BostonConcreteSoupFactory struct {
	BaseSoupFactory
}

func NewBostonConcreteSoupFactory () *BostonConcreteSoupFactory {
	return &BostonConcreteSoupFactory{ BaseSoupFactory{"Boston"}}
}

func (this *BostonConcreteSoupFactory) MakeClamChowder() common.Soup {
	return common.NewBostonClamChowder()
}

func (this *BostonConcreteSoupFactory) MakeFishChowder() common.Soup {
	return common.NewBostonFishChowder()
}

