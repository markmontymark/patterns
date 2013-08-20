
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//An abstract factory has sets of methods to make families of various objects.

//In this example the AbstractSoupFactory defines the method names and return types to make various kinds of soup.

//The BostonConcreteSoupFactory and the HonoluluConcreteSoupFactory both extend the AbstractSoupFactory.

//An object can be defined as an AbstractSoupFactory, and instantiated as either a BostonConcreteSoupFactory (BCSF) or a HonoluluConcreteSoupFactory (HCSF). Both BCSF or HCSF have the makeFishChowder method, and both return a FishChowder type class. However, the BCSF returns a FishChowder subclass of BostonFishChowder, while the HCSF returns a FishChowder subclass of HonoluluFishChowder.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//AbstractSoupFactory - An Abstract Factory


package abstractfactory

import "../common"


type AbstractSoupFactory interface {
	GetFactoryLocation() string
   MakeChickenSoup() *common.SoupImpl 
   MakeClamChowder() *common.SoupImpl
   MakeFishChowder() *common.SoupImpl
   MakeMinnestrone() *common.SoupImpl
   MakePastaFazul() *common.SoupImpl
   MakeTofuSoup() *common.SoupImpl
   MakeVegetableSoup() *common.SoupImpl
}
