
package common

// used by creational builder, and creational factorymethod

type SoupBuffet struct {
   soupBuffetName string
   ChickenSoup *SoupImpl
   ClamChowder *SoupImpl
   FishChowder *SoupImpl
   Minnestrone *SoupImpl
   PastaFazul *SoupImpl
   TofuSoup *SoupImpl
   VegetableSoup *SoupImpl
}

func NewSoupBuffet() *SoupBuffet {
	obj := new(SoupBuffet)
	return obj
}

func (this *SoupBuffet) GetSoupBuffetName() string {
	return this.soupBuffetName
}

func (this *SoupBuffet) SetSoupBuffetName(soupBuffetNameIn string) {
	this.soupBuffetName = soupBuffetNameIn
}
   
func (this *SoupBuffet) SetChickenSoup(chickenSoupIn *SoupImpl) {
	 this.ChickenSoup = chickenSoupIn
}

func (this *SoupBuffet) SetClamChowder(clamChowderIn *SoupImpl) {
	 this.ClamChowder = clamChowderIn
}

func (this *SoupBuffet) SetFishChowder(fishChowderIn *SoupImpl) {
	this.FishChowder = fishChowderIn
}

func (this *SoupBuffet) SetMinnestrone(minnestroneIn *SoupImpl) {
	this.Minnestrone = minnestroneIn
}

func (this *SoupBuffet) SetPastaFazul(pastaFazulIn *SoupImpl) {
	 this.PastaFazul = pastaFazulIn
}

func (this *SoupBuffet) SetTofuSoup(tofuSoupIn *SoupImpl) {
	 this.TofuSoup = tofuSoupIn
}

func (this *SoupBuffet) SetVegetableSoup(vegetableSoupIn *SoupImpl) {
	 this.VegetableSoup = vegetableSoupIn
}
   
func (this *SoupBuffet) GetTodaysSoups() string {
	return " Today's Soups!  "+
		  " Chicken Soup: " +   this.ChickenSoup.GetSoupName() +
        " Clam Chowder: " + 	this.ClamChowder.GetSoupName() +
        " Fish Chowder: " + 	this.FishChowder.GetSoupName() +
        " Minnestrone: " + 	this.Minnestrone.GetSoupName()+
        " Pasta Fazul: " + 	this.PastaFazul.GetSoupName()+
        " Tofu Soup: " + 		this.TofuSoup.GetSoupName()+
        " Vegetable Soup: " + this.VegetableSoup.GetSoupName()
}        
