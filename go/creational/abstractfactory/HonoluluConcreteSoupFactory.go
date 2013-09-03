package abstractfactory

import "../common"

type HonoluluConcreteSoupFactory struct {
	BaseSoupFactory
}

func NewHonoluluConcreteSoupFactory () *HonoluluConcreteSoupFactory {
	return &HonoluluConcreteSoupFactory{ BaseSoupFactory{ "Honolulu" } }
}

func (this *HonoluluConcreteSoupFactory) MakeClamChowder() common.Soup {
	return common.NewHonoluluClamChowder()
}

func (this *HonoluluConcreteSoupFactory) MakeFishChowder() common.Soup {
	return common.NewHonoluluFishChowder()
}

