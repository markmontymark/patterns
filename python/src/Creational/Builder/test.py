# Testing the builder
from BostonSoupBuffetBuilder import BostonSoupBuffetBuilder
from HonoluluSoupBuffetBuilder import HonoluluSoupBuffetBuilder

import re
import unittest

class TestBuilder( unittest.TestCase ):


	def createSoupBuffet(self,soupBuffetBuilder):
		soupBuffetBuilder.buildSoupBuffet()
		soupBuffetBuilder.setSoupBuffetName()
		soupBuffetBuilder.buildChickenSoup()
		soupBuffetBuilder.buildClamChowder()
		soupBuffetBuilder.buildFishChowder()
		soupBuffetBuilder.buildMinnestrone()
		soupBuffetBuilder.buildPastaFazul()
		soupBuffetBuilder.buildTofuSoup()
		soupBuffetBuilder.buildVegetableSoup()
		return soupBuffetBuilder.getSoupBuffet()

	def testBuilderFilesShouldBeLoaded(self):
		'''builder files should be loaded'''
		self.assertEqual(BostonSoupBuffetBuilder != None, True)
		self.assertEqual(HonoluluSoupBuffetBuilder != None, True)

	def testBostonSoupBuffett(self):
		'''Testing Boston soup buffett'''
		bostonsoupBuffet = self.createSoupBuffet( BostonSoupBuffetBuilder() )
		self.assertEqual(re.sub(r"\s","","At the {0} today's soup is {1}".format(bostonsoupBuffet.getSoupBuffetName(), bostonsoupBuffet.getTodaysSoups())), re.sub(r"\s","","At the Boston Soup Buffet today's soup is  Today's Soups!  , Chicken Soup: ,ChickenSoup, Clam Chowder: ,QuahogChowder, Fish Chowder: ,ScrodFishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup"))

	def testHonoluluSoupBuffett(self):
		'''Testing Honolulu soup buffett'''
		honoluluSoupBuffet = self.createSoupBuffet(HonoluluSoupBuffetBuilder())
		self.assertEqual(re.sub(r"\s","","At the {0} today's soup is {1}".format(honoluluSoupBuffet.getSoupBuffetName(), honoluluSoupBuffet.getTodaysSoups())), re.sub(r"\s","","At the Honolulu Soup Buffet today's soup is  Today's Soups!  , Chicken Soup: ,ChickenSoup, Clam Chowder: ,PacificClamChowder, Fish Chowder: ,OpakapakaFishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup"))

