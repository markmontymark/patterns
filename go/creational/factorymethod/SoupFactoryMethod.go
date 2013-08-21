
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Methods to make and return components of one object various ways.

//In this example the SoupFactoryMethod defines the makeSoupBuffet method which returns a SoupBuffet object. The SoupFactoryMethod also defines the methods needed in creating the SoupBuffet.

//The BostonSoupFactoryMethodSubclass and the HonoluluSoupFactoryMethodSubclass both extend the SoupFactoryMethod. An object can be defined as an SoupFactoryMethod, and instantiated as either a BostonSoupFactoryMethodSubclass (BSFMS) or a HonoluluSoupFactoryMethodSubclass (HSFMS).

//Both BSFMS and HSFMS override SoupFactoryMethod's makeFishChowder method. The BSFMS returns a SoupBuffet with a FishChowder subclass of BostonFishChowder, while the HSFMS returns a SoupBuffet with a FishChowder subclass of HonoluluFishChowder.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//SoupFactoryMethod - a Factory Method


package factorymethod

import (
	"../common"
)

type SoupFactoryMethod interface {
    MakeSoupBuffet() *common.SoupBuffet 
    MakeBuffetName() string
    MakeChickenSoup() *common.SoupImpl
    MakeClamChowder() *common.SoupImpl
    MakeFishChowder() *common.SoupImpl
    MakeMinnestrone()*common.SoupImpl
    MakePastaFazul() *common.SoupImpl
    MakeTofuSoup() *common.SoupImpl
    MakeVegetableSoup()*common.SoupImpl
}
