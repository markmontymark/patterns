package Patterns::Creational::Builder;

#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Builder Overview
#//Make and return one object various ways.

#//In this example the abstract SoupBuffetBuilder defines the methods necessary to create a SoupBuffet.

#//BostonSoupBuffetBuilder and the HonoluluSoupBuffetBuilder both extend the SoupBuffetBuilder.

#//An object can be defined as an SoupBuffetBuilder, and instantiated as either a BostonSoupBuffetBuilder (BSBB) or a HonoluluSoupBuffetBuilder (HSBB). Both BSBB or HSBB have a buildFishChowder method, and both return a FishChowder type class. However, the BSBB returns a FishChowder subclass of BostonFishChowder, while the HSBB returns a FishChowder subclass of HonoluluFishChowder.


use Patterns::Creational::Builder::SoupBuffet;
use Patterns::Creational::Builder::Soup;
use Patterns::Creational::Builder::BostonSoupBuffetBuilder;
use Patterns::Creational::Builder::HonoluluFishChowder;
use Patterns::Creational::Builder::FishChowder;
use Patterns::Creational::Builder::SoupBuffetBuilder;
use Patterns::Creational::Builder::PastaFazul;
use Patterns::Creational::Builder::HonoluluClamChowder;
use Patterns::Creational::Builder::BostonFishChowder;
use Patterns::Creational::Builder::TofuSoup;
use Patterns::Creational::Builder::ClamChowder;
use Patterns::Creational::Builder::HonoluluSoupBuffetBuilder;
use Patterns::Creational::Builder::VegetableSoup;
use Patterns::Creational::Builder::ChickenSoup;
use Patterns::Creational::Builder::Minnestrone;
use Patterns::Creational::Builder::BostonClamChowder;

1;
