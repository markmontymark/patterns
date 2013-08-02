package Patterns::Creational::Abstract_Factory;

#// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#// Original Author: Larry Truett
#// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#An abstract factory has sets of methods to make families of various objects.
#
#In this example the AbstractSoupFactory defines the method names and return types to make various kinds of soup.
#
#The BostonConcreteSoupFactory and the HonoluluConcreteSoupFactory both extend the AbstractSoupFactory.
#
#An object can be defined as an AbstractSoupFactory, and instantiated as either a BostonConcreteSoupFactory (BCSF) or a HonoluluConcreteSoupFactory (HCSF). Both BCSF or HCSF have the makeFishChowder method, and both return a FishChowder type class. However, the BCSF returns a FishChowder subclass of BostonFishChowder, while the HCSF returns a FishChowder subclass of HonoluluFishChowder.
#

use Patterns::Creational::Abstract_Factory::BostonConcreteSoupFactory;
use Patterns::Creational::Abstract_Factory::Soup;
use Patterns::Creational::Abstract_Factory::HonoluluConcreteSoupFactory;
use Patterns::Creational::Abstract_Factory::HonoluluFishChowder;
use Patterns::Creational::Abstract_Factory::FishChowder;
use Patterns::Creational::Abstract_Factory::AbstractSoupFactory;
use Patterns::Creational::Abstract_Factory::HonoluluClamChowder;
use Patterns::Creational::Abstract_Factory::PastaFazul;
use Patterns::Creational::Abstract_Factory::TofuSoup;
use Patterns::Creational::Abstract_Factory::BostonFishChowder;
use Patterns::Creational::Abstract_Factory::ClamChowder;
use Patterns::Creational::Abstract_Factory::VegetableSoup;
use Patterns::Creational::Abstract_Factory::ChickenSoup;
use Patterns::Creational::Abstract_Factory::Minnestrone;
use Patterns::Creational::Abstract_Factory::BostonClamChowder;

1;
