

#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Builder Overview
#//Make and return one object various ways.
#
#//In this example the abstract SoupBuffetBuilder defines the methods necessary to create a SoupBuffet.
#
#//BostonSoupBuffetBuilder and the HonoluluSoupBuffetBuilder both extend the SoupBuffetBuilder.
#
#//An object can be defined as an SoupBuffetBuilder, and instantiated as either a BostonSoupBuffetBuilder (BSBB) or a HonoluluSoupBuffetBuilder (HSBB). Both BSBB or HSBB have a buildFishChowder method, and both return a FishChowder type class. However, the BSBB returns a FishChowder subclass of BostonFishChowder, while the HSBB returns a FishChowder subclass of HonoluluFishChowder.
#//Still reading? Save your time, watch the video lessons!
#//Video tutorial on design patterns
#//SoupBuffetBuilder.java - a Builder
#

from common.SoupBuffet import SoupBuffet
from common.ChickenSoup import ChickenSoup
from common.ClamChowder import ClamChowder
from common.FishChowder import FishChowder
from common.Minnestrone import Minnestrone
from common.PastaFazul import PastaFazul
from common.TofuSoup import TofuSoup
from common.VegetableSoup import VegetableSoup

class SoupBuffetBuilder:

	def initialize() 
		raise Exception("Can't instantiate abstract class, SoupBuffetBuilder")

	def setSoupBuffetName(self) : 
		raise Exception("Unimplemented method SoupBuffetBuilder.setSoupBuffetName")

	def getSoupBuffet(self)       : 
		return self.soupBuffet

	def buildSoupBuffet(self)     : 
		self.soupBuffet = SoupBuffet()

	def buildChickenSoup(self)    : 
		self.soupBuffet.chickenSoup = ChickenSoup()

	def buildClamChowder(self)    : 
		self.soupBuffet.clamChowder = ClamChowder()

	def buildFishChowder(self)    : 
		self.soupBuffet.fishChowder = FishChowder()

	def buildMinnestrone(self)    : 
		self.soupBuffet.minnestrone = Minnestrone()

	def buildPastaFazul(self)     : 
		self.soupBuffet.pastaFazul = PastaFazul()

	def buildTofuSoup(self)       : 
		self.soupBuffet.tofuSoup = TofuSoup()

	def buildVegetableSoup(self)  : 
		self.soupBuffet.vegetableSoup = VegetableSoup()
