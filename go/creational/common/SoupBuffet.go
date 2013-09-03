
package common

// used by creational builder, and creational factorymethod

import (
	"fmt"
)

type SoupBuffet struct {
   soupBuffetName string
   ChickenSoup Soup
   ClamChowder Soup
   FishChowder Soup
   Minnestrone Soup
   PastaFazul Soup
   TofuSoup Soup
   VegetableSoup Soup
}

func NewSoupBuffet() *SoupBuffet {
	return &SoupBuffet{}
}

func (this *SoupBuffet) GetSoupBuffetName() string {
	return this.soupBuffetName
}

func (this *SoupBuffet) SetSoupBuffetName(soupBuffetNameIn string) {
	this.soupBuffetName = soupBuffetNameIn
}
   
func (this *SoupBuffet) SetChickenSoup(chickenSoupIn Soup) {
	 this.ChickenSoup = chickenSoupIn
}

func (this *SoupBuffet) SetClamChowder(clamChowderIn Soup) {
	 this.ClamChowder = clamChowderIn
}

func (this *SoupBuffet) SetFishChowder(fishChowderIn Soup) {
	this.FishChowder = fishChowderIn
}

func (this *SoupBuffet) SetMinnestrone(minnestroneIn Soup) {
	this.Minnestrone = minnestroneIn
}

func (this *SoupBuffet) SetPastaFazul(pastaFazulIn Soup) {
	 this.PastaFazul = pastaFazulIn
}

func (this *SoupBuffet) SetTofuSoup(tofuSoupIn Soup) {
	 this.TofuSoup = tofuSoupIn
}

func (this *SoupBuffet) SetVegetableSoup(vegetableSoupIn Soup) {
	 this.VegetableSoup = vegetableSoupIn
}
   
func (this *SoupBuffet) GetTodaysSoups() string {
	return fmt.Sprintf(" Today's Soups!   Chicken Soup: %s Clam Chowder: %s Fish Chowder: %s Minnestrone: %s Pasta Fazul: %s Tofu Soup: %s Vegetable Soup: %s" ,
		  this.ChickenSoup.GetSoupName() ,
        this.ClamChowder.GetSoupName() ,
        this.FishChowder.GetSoupName() ,
        this.Minnestrone.GetSoupName(),
        this.PastaFazul.GetSoupName(),
        this.TofuSoup.GetSoupName() ,
        this.VegetableSoup.GetSoupName() )
}        
