//BostonSoupBuffetBuilder - One of Two Builder Subclasses


package builder

import (
	"../common"
)

type BaseSoupBuffetBuilder struct { // implements SoupBuffetBuilder
	soupBuffet *common.SoupBuffet
}

/*
func (this *BostonSoupBuffetBuilder) BuildSoupBuffet () {
	this.soupBuffet = new(common.SoupBuffet)
	this.soupBuffet.SetSoupBuffetName("Base Soup Buffet")
	this.BuildChickenSoup()
	this.BuildClamChowder()
	this.BuildFishChowder()
	this.BuildMinnestrone()
	this.BuildPastaFazul()
	this.BuildTofuSoup()
	this.BuildVegetableSoup()
}
*/

func (this *BaseSoupBuffetBuilder) GetSoupBuffet () *common.SoupBuffet {
	return this.soupBuffet
}

func (this *BaseSoupBuffetBuilder) GetSoupBuffetName () string {
	return this.soupBuffet.GetSoupBuffetName()
}

func (this *BaseSoupBuffetBuilder) BuildChickenSoup() {
   this.soupBuffet.SetChickenSoup( common.NewChickenSoup() )
}
func (this *BaseSoupBuffetBuilder) BuildClamChowder() {
   this.soupBuffet.SetClamChowder( common.NewClamChowder() )
}
func (this *BaseSoupBuffetBuilder) BuildFishChowder() {
   this.soupBuffet.SetFishChowder( common.NewFishChowder() )
}
func (this *BaseSoupBuffetBuilder) BuildMinnestrone() {
   this.soupBuffet.SetMinnestrone( common.NewMinnestrone() )
}
func (this *BaseSoupBuffetBuilder) BuildPastaFazul() {
   this.soupBuffet.SetPastaFazul( common.NewPastaFazul() )
}
func (this *BaseSoupBuffetBuilder) BuildTofuSoup() {
   this.soupBuffet.SetTofuSoup( common.NewTofuSoup() )
}
func (this *BaseSoupBuffetBuilder) BuildVegetableSoup() {
   this.soupBuffet.SetVegetableSoup(common.NewVegetableSoup() )
}

