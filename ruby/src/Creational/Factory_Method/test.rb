
# - testing the factory method

from SoupFactoryMethod import SoupFactoryMethod
from BostonSoupFactoryMethodSubclass import BostonSoupFactoryMethodSubclass
from HonoluluSoupFactoryMethodSubclass import HonoluluSoupFactoryMethodSubclass

import unittest
import re

class TestFactoryMethod( unittest.TestCase ):

	def testPlainSoupFactory(self):
		'''Test plain soup factory'''
		sfm = SoupFactoryMethod()
		sb = sfm.makeSoupBuffet()
		sb.setSoupBuffetName(sfm.makeBuffetName())
		sb.setChickenSoup(sfm.makeChickenSoup())
		sb.setClamChowder(sfm.makeClamChowder())
		sb.setFishChowder(sfm.makeFishChowder())
		sb.setMinnestrone(sfm.makeMinnestrone())
		sb.setPastaFazul(sfm.makePastaFazul())
		sb.setTofuSoup(sfm.makeTofuSoup())
		sb.setVegetableSoup(sfm.makeVegetableSoup())
		self.assertEqual( re.sub(r"\s","","At the {0} {1}".format(sb.getSoupBuffetName(), sb.getTodaysSoups())), re.sub(r"\s","","At the Soup Buffet  Today's Soups!  ,  Chicken Soup: ,ChickenSoup, Clam Chowder: ,ClamChowder, Fish Chowder: ,FishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup"))

	def testBostonSoupFactory(self):
		'''Test boston soup factory'''
		bsfm = BostonSoupFactoryMethodSubclass()
		bsb = bsfm.makeSoupBuffet()
		bsb.setSoupBuffetName(bsfm.makeBuffetName())
		bsb.setChickenSoup(bsfm.makeChickenSoup())
		bsb.setClamChowder(bsfm.makeClamChowder())
		bsb.setFishChowder(bsfm.makeFishChowder())
		bsb.setMinnestrone(bsfm.makeMinnestrone())
		bsb.setPastaFazul(bsfm.makePastaFazul())
		bsb.setTofuSoup(bsfm.makeTofuSoup())
		bsb.setVegetableSoup(bsfm.makeVegetableSoup())
		self.assertEqual( re.sub(r"\s","","At the  {0} {1}".format(bsb.getSoupBuffetName(), bsb.getTodaysSoups()))  , re.sub(r"\s","","At the  Boston Soup Buffet  Today's Soups!  ,  Chicken Soup: ,ChickenSoup, Clam Chowder: ,QuahogChowder, Fish Chowder: ,ScrodFishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup"))

	def testHonoluluSoupFactory(self):
		'''Test honolulu soup factory'''
		hsfm = HonoluluSoupFactoryMethodSubclass()
		hsb = hsfm.makeSoupBuffet()
		hsb.setSoupBuffetName(hsfm.makeBuffetName())
		hsb.setChickenSoup(hsfm.makeChickenSoup())
		hsb.setClamChowder(hsfm.makeClamChowder())
		hsb.setFishChowder(hsfm.makeFishChowder())
		hsb.setMinnestrone(hsfm.makeMinnestrone())
		hsb.setPastaFazul(hsfm.makePastaFazul())
		hsb.setTofuSoup(hsfm.makeTofuSoup())
		hsb.setVegetableSoup(hsfm.makeVegetableSoup())
		self.assertEqual( re.sub(r"\s","","At the  {0} {1}".format(hsb.getSoupBuffetName(), hsb.getTodaysSoups())) , re.sub(r"\s","","At the  Honolulu Soup Buffet  Today's Soups!  ,  Chicken Soup: ,ChickenSoup, Clam Chowder: ,PacificClamChowder, Fish Chowder: ,OpakapakaFishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup"))
