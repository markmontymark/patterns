# SoupBuffet- A helper class

from ChickenSoup import ChickenSoup
from ClamChowder import ClamChowder
from FishChowder import FishChowder
from Minnestrone import Minnestrone
from PastaFazul import PastaFazul
from TofuSoup import TofuSoup
from VegetableSoup import VegetableSoup

class SoupBuffet :

	def initialize()
		self.soupBuffetName = None
		self.chickenSoup = None
		self.clamChowder = None
		self.fishChowder = None
		self.minnestrone = None
		self.pastaFazul = None
		self.tofuSoup = None
		self.vegetableSoup = None

	def setSoupBuffetName(self,soupBuffetNameIn) :
		self.soupBuffetName = soupBuffetNameIn

	def setChickenSoup(self,chickenSoupIn) :
		self.chickenSoup = chickenSoupIn

	def setClamChowder(self,clamChowderIn) :
		self.clamChowder = clamChowderIn

	def setFishChowder(self,fishChowderIn) :
		self.fishChowder = fishChowderIn

	def setMinnestrone(self,minnestroneIn) :
		self.minnestrone = minnestroneIn

	def setPastaFazul(self,pastaFazulIn) :
		self.pastaFazul = pastaFazulIn

	def setTofuSoup(self,tofuSoupIn) :
		self.tofuSoup = tofuSoupIn

	def setVegetableSoup(self,vegetableSoupIn) :
		self.vegetableSoup = vegetableSoupIn

	def getSoupBuffetName(self) :  
		return self.soupBuffetName

	def getTodaysSoups(self) :  
		return ', '.join([
			" Today's Soups!  ",
			" Chicken Soup: ", self.chickenSoup.soupName,
			" Clam Chowder: ", self.clamChowder.soupName,
			" Fish Chowder: ", self.fishChowder.soupName,
			" Minnestrone: ", self.minnestrone.soupName,
			" Pasta Fazul: ", self.pastaFazul.soupName,
			" Tofu Soup: ", self.tofuSoup.soupName,
			" Vegetable Soup: ", self.vegetableSoup.soupName
			])
