#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Methods to make and return components of one object various ways.

#//In this example the SoupFactoryMethod defines the makeSoupBuffet method which returns a SoupBuffet object. The SoupFactoryMethod also defines the methods needed in creating the SoupBuffet.
#
#//The BostonSoupFactoryMethodSubclass and the HonoluluSoupFactoryMethodSubclass both extend the SoupFactoryMethod. An object can be defined as an SoupFactoryMethod, and instantiated as either a BostonSoupFactoryMethodSubclass (BSFMS) or a HonoluluSoupFactoryMethodSubclass (HSFMS).
#
#//Both BSFMS and HSFMS override SoupFactoryMethod's makeFishChowder method. The BSFMS returns a SoupBuffet with a FishChowder subclass of BostonFishChowder, while the HSFMS returns a SoupBuffet with a FishChowder subclass of HonoluluFishChowder.

package Patterns::Creational::Factory_Method;

use Patterns::Creational::Factory_Method::Soup;
use Patterns::Creational::Factory_Method::TofuSoup;
use Patterns::Creational::Factory_Method::VegetableSoup;
use Patterns::Creational::Factory_Method::ChickenSoup;
use Patterns::Creational::Factory_Method::FishChowder;
use Patterns::Creational::Factory_Method::PastaFazul;
use Patterns::Creational::Factory_Method::ClamChowder;
use Patterns::Creational::Factory_Method::BostonFishChowder;
use Patterns::Creational::Factory_Method::BostonClamChowder;
use Patterns::Creational::Factory_Method::HonoluluFishChowder;
use Patterns::Creational::Factory_Method::HonoluluClamChowder;
use Patterns::Creational::Factory_Method::Minnestrone;
use Patterns::Creational::Factory_Method::SoupFactoryMethod;
use Patterns::Creational::Factory_Method::SoupBuffet;
use Patterns::Creational::Factory_Method::HonoluluSoupFactoryMethodSubclass;
use Patterns::Creational::Factory_Method::BostonSoupFactoryMethodSubclass;

1;
