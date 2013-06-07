package Creational::Builder;

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

abstract class SoupBuffetBuilder {
    SoupBuffet soupBuffet;
        
    public SoupBuffet getSoupBuffet() {
        return soupBuffet;
    }
    
    public void buildSoupBuffet() {
        soupBuffet = new SoupBuffet();
    }
    
    public abstract void setSoupBuffetName();
        
    public void buildChickenSoup() {
        soupBuffet.chickenSoup = new ChickenSoup();
    }
    public void buildClamChowder() {
        soupBuffet.clamChowder = new ClamChowder();
    }
    public void buildFishChowder() {
        soupBuffet.fishChowder = new FishChowder();
    }
    public void buildMinnestrone() {
        soupBuffet.minnestrone = new Minnestrone();
    }
    public void buildPastaFazul() {
        soupBuffet.pastaFazul = new PastaFazul();
    }
    public void buildTofuSoup() {
        soupBuffet.tofuSoup = new TofuSoup();
    }
    public void buildVegetableSoup() {
        soupBuffet.vegetableSoup = new VegetableSoup();
    }
}