package Patterns::Creational::Builder {

#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Builder Overview
#//Make and return one object various ways.

#//In this example the abstract SoupBuffetBuilder defines the methods necessary to create a SoupBuffet.

#//BostonSoupBuffetBuilder and the HonoluluSoupBuffetBuilder both extend the SoupBuffetBuilder.

#//An object can be defined as an SoupBuffetBuilder, and instantiated as either a BostonSoupBuffetBuilder (BSBB) or a HonoluluSoupBuffetBuilder (HSBB). Both BSBB or HSBB have a buildFishChowder method, and both return a FishChowder type class. However, the BSBB returns a FishChowder subclass of BostonFishChowder, while the HSBB returns a FishChowder subclass of HonoluluFishChowder.


use Patterns::Creational::Builder::SoupBuffetBuilder;
use Patterns::Creational::Builder::HonoluluSoupBuffetBuilder;
use Patterns::Creational::Builder::BostonSoupBuffetBuilder;

}
