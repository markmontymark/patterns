//BostonSoupBuffetBuilder - One of Two Builder Subclasses


package builder

import (
	"../common"
)


type BostonSoupBuffetBuilder struct { // implements SoupBuffetBuilder
	BaseSoupBuffetBuilder
}

func NewBostonSoupBuffetBuilder () *BostonSoupBuffetBuilder {
	return &BostonSoupBuffetBuilder{ BaseSoupBuffetBuilder{}}
}

func (this *BostonSoupBuffetBuilder) BuildSoupBuffet () {
	this.soupBuffet = new(common.SoupBuffet)
	this.soupBuffet.SetSoupBuffetName("Boston Soup Buffet")
	this.BuildChickenSoup()
	this.BuildClamChowder()
	this.BuildFishChowder()
	this.BuildMinnestrone()
	this.BuildPastaFazul()
	this.BuildTofuSoup()
	this.BuildVegetableSoup()
}

func (this *BostonSoupBuffetBuilder) BuildClamChowder() {
   this.soupBuffet.SetClamChowder( common.NewBostonClamChowder() )
}
func (this *BostonSoupBuffetBuilder) BuildFishChowder() {
   this.soupBuffet.SetFishChowder( common.NewBostonFishChowder() )
}

