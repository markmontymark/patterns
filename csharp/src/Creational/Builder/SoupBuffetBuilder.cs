
//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Builder Overview
//Make and return one object various ways.

//In this example the abstract SoupBuffetBuilder defines the methods necessary to create a SoupBuffet.

//BostonSoupBuffetBuilder and the HonoluluSoupBuffetBuilder both extend the SoupBuffetBuilder.

//An object can be defined as an SoupBuffetBuilder, and instantiated as either a BostonSoupBuffetBuilder (BSBB) or a HonoluluSoupBuffetBuilder (HSBB). Both BSBB or HSBB have a buildFishChowder method, and both return a FishChowder type class. However, the BSBB returns a FishChowder subclass of BostonFishChowder, while the HSBB returns a FishChowder subclass of HonoluluFishChowder.
//Still reading? Save your time, watch the video lessons!
//Video tutorial on design patterns
//SoupBuffetBuilder.java - a Builder

namespace Creational.Builder {

using common;

public class SoupBuffetBuilder : AbstractBuilder {

    public SoupBuffet soupBuffet;
        
    public SoupBuffet getSoupBuffet() {
        return soupBuffet;
    }
    
    public void buildSoupBuffet() {
        soupBuffet = new SoupBuffet();
    }
    
    public override void setSoupBuffetName() {}
        
    public void buildChickenSoup() {
        soupBuffet.chickenSoup = new ChickenSoup();
    }
    public virtual void buildClamChowder() {
        soupBuffet.clamChowder = new ClamChowder();
    }
    public virtual void buildFishChowder() {
        soupBuffet.fishChowder = new FishChowder();
    }
    public virtual void buildMinnestrone() {
        soupBuffet.minnestrone = new Minnestrone();
    }
    public virtual void buildPastaFazul() {
        soupBuffet.pastaFazul = new PastaFazul();
    }
    public virtual void buildTofuSoup() {
        soupBuffet.tofuSoup = new TofuSoup();
    }
    public virtual void buildVegetableSoup() {
        soupBuffet.vegetableSoup = new VegetableSoup();
    }
}

}
