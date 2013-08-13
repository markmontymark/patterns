
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Methods to make and return components of one object various ways.

//In this example the SoupFactoryMethod defines the makeSoupBuffet method which returns a SoupBuffet object. The SoupFactoryMethod also defines the methods needed in creating the SoupBuffet.

//The BostonSoupFactoryMethodSubclass and the HonoluluSoupFactoryMethodSubclass both extend the SoupFactoryMethod. An object can be defined as an SoupFactoryMethod, and instantiated as either a BostonSoupFactoryMethodSubclass (BSFMS) or a HonoluluSoupFactoryMethodSubclass (HSFMS).

//Both BSFMS and HSFMS override SoupFactoryMethod's makeFishChowder method. The BSFMS returns a SoupBuffet with a FishChowder subclass of BostonFishChowder, while the HSFMS returns a SoupBuffet with a FishChowder subclass of HonoluluFishChowder.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//SoupFactoryMethod.java - a Factory Method


namespace Creational.Factory_Method {

using common;

public class SoupFactoryMethod {
    public SoupFactoryMethod() {}
        
    public SoupBuffet makeSoupBuffet() {
        return new SoupBuffet();
    }

    public virtual ChickenSoup makeChickenSoup() {
        return new ChickenSoup();
    }
    public virtual ClamChowder makeClamChowder() {
        return new ClamChowder();
    }
    public virtual FishChowder makeFishChowder() {
        return new FishChowder();
    }
    public virtual Minnestrone makeMinnestrone() {
        return new Minnestrone();
    }
    public virtual PastaFazul makePastaFazul() {
        return new PastaFazul();
    }
    public virtual TofuSoup makeTofuSoup() {
        return new TofuSoup();
    }
    public virtual VegetableSoup makeVegetableSoup() {
        return new VegetableSoup();
    }

    public virtual string makeBuffetName() {
        return "Soup Buffet";
    }
}

}
