//BostonSoupBuffetBuilder - One of Two Builder Subclasses


package builder

import (
	"../common"
)



type BostonSoupBuffetBuilder struct { // implements SoupBuffetBuilder
	soupBuffet *common.SoupBuffet
}

func NewBostonSoupBuffetBuilder () *BostonSoupBuffetBuilder {
	obj := new(BostonSoupBuffetBuilder)
	return obj
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

func (this *BostonSoupBuffetBuilder) GetSoupBuffet () *common.SoupBuffet {
	return this.soupBuffet
}

func (this *BostonSoupBuffetBuilder) GetSoupBuffetName () string {
	return this.soupBuffet.GetSoupBuffetName()
}

func (this *BostonSoupBuffetBuilder) BuildChickenSoup() {
   this.soupBuffet.SetChickenSoup( common.NewChickenSoup() )
}
func (this *BostonSoupBuffetBuilder) BuildClamChowder() {
   this.soupBuffet.SetClamChowder( common.NewBostonClamChowder() )
}
func (this *BostonSoupBuffetBuilder) BuildFishChowder() {
   this.soupBuffet.SetFishChowder( common.NewBostonFishChowder() )
}
func (this *BostonSoupBuffetBuilder) BuildMinnestrone() {
   this.soupBuffet.SetMinnestrone( common.NewMinnestrone() )
}
func (this *BostonSoupBuffetBuilder) BuildPastaFazul() {
   this.soupBuffet.SetPastaFazul( common.NewPastaFazul() )
}
func (this *BostonSoupBuffetBuilder) BuildTofuSoup() {
   this.soupBuffet.SetTofuSoup( common.NewTofuSoup() )
}
func (this *BostonSoupBuffetBuilder) BuildVegetableSoup() {
   this.soupBuffet.SetVegetableSoup(common.NewVegetableSoup() )
}

