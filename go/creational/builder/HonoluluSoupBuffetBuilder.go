
//HonoluluSoupBuffetBuilder - One of Two Builder Subclasses


package builder

import (
	"../common"
)



type HonoluluSoupBuffetBuilder struct { // implements SoupBuffetBuilder
	soupBuffet *common.SoupBuffet
}

func NewHonoluluSoupBuffetBuilder () *HonoluluSoupBuffetBuilder {
	obj := new(HonoluluSoupBuffetBuilder)
	return obj
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

func (this *HonoluluSoupBuffetBuilder) GetSoupBuffet () *common.SoupBuffet {
	return this.soupBuffet
}

func (this *HonoluluSoupBuffetBuilder) GetSoupBuffetName () string {
	return this.soupBuffet.GetSoupBuffetName()
}

func (this *HonoluluSoupBuffetBuilder) BuildChickenSoup() {
   this.soupBuffet.SetChickenSoup( common.NewChickenSoup() )
}
func (this *HonoluluSoupBuffetBuilder) BuildClamChowder() {
   this.soupBuffet.SetClamChowder( common.NewHonoluluClamChowder() )
}
func (this *HonoluluSoupBuffetBuilder) BuildFishChowder() {
   this.soupBuffet.SetFishChowder( common.NewHonoluluFishChowder() )
}
func (this *HonoluluSoupBuffetBuilder) BuildMinnestrone() {
   this.soupBuffet.SetMinnestrone( common.NewMinnestrone() )
}
func (this *HonoluluSoupBuffetBuilder) BuildPastaFazul() {
   this.soupBuffet.SetPastaFazul( common.NewPastaFazul() )
}
func (this *HonoluluSoupBuffetBuilder) BuildTofuSoup() {
   this.soupBuffet.SetTofuSoup( common.NewTofuSoup() )
}
func (this *HonoluluSoupBuffetBuilder) BuildVegetableSoup() {
   this.soupBuffet.SetVegetableSoup(common.NewVegetableSoup() )
}

