

#// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#// Original Author: Larry truett
#// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#An abstract factory has sets of methods to make families of various objects.
#
#In this example the AbstractSoupFactory defines the method names and return types to make various kinds of soup.
#
#The BostonConcreteSoupFactory and the HonoluluConcreteSoupFactory both extend the AbstractSoupFactory.
#
#An object can be defined as an AbstractSoupFactory, and instantiated as either a BostonConcreteSoupFactory (BCSF) or a HonoluluConcreteSoupFactory (HCSF). Both BCSF or HCSF have the makeFishChowder method, and both return a FishChowder type class. However, the BCSF returns a FishChowder subclass of BostonFishChowder, while the HCSF returns a FishChowder subclass of HonoluluFishChowder.
#



require "common.rb"
require "Creational/Abstract_Factory/BostonConcreteSoupFactory"
require "Creational/Abstract_Factory/HonoluluConcreteSoupFactory"
require "Creational/Abstract_Factory/AbstractSoupFactory"

