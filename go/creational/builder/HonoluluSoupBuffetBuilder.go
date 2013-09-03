
//HonoluluSoupBuffetBuilder - One of Two Builder Subclasses


package builder

import (
	"../common"
)



type HonoluluSoupBuffetBuilder struct { // implements SoupBuffetBuilder
	BaseSoupBuffetBuilder
}

func NewHonoluluSoupBuffetBuilder () *HonoluluSoupBuffetBuilder {
	return &HonoluluSoupBuffetBuilder{ BaseSoupBuffetBuilder{} }
}

func (this *HonoluluSoupBuffetBuilder) BuildSoupBuffet () {
	this.soupBuffet = new(common.SoupBuffet)
	this.soupBuffet.SetSoupBuffetName("Honolulu Soup Buffet")
	this.BuildChickenSoup()
	this.BuildClamChowder()
	this.BuildFishChowder()
	this.BuildMinnestrone()
	this.BuildPastaFazul()
	this.BuildTofuSoup()
	this.BuildVegetableSoup()
}

func (this *HonoluluSoupBuffetBuilder) BuildClamChowder() {
   this.soupBuffet.SetClamChowder( common.NewHonoluluClamChowder() )
}
func (this *HonoluluSoupBuffetBuilder) BuildFishChowder() {
   this.soupBuffet.SetFishChowder( common.NewHonoluluFishChowder() )
}
