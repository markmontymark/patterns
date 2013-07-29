
# testing the Bridge

from SodaImpSingleton import SodaImpSingleton
from Soda import Soda
from CherrySodaImp import CherrySodaImp
from GrapeSodaImp import GrapeSodaImp
from OrangeSodaImp import  OrangeSodaImp
from MediumSoda import MediumSoda
from SuperSizeSoda import SuperSizeSoda

import unittest

class TestStructuralBridge( unittest.TestCase) :
	def test(self) :
		def testCherryPlatform() :
			sodaImpSingleton = SodaImpSingleton(CherrySodaImp())
			mediumSoda = MediumSoda()
			self.assertEqual(mediumSoda.pourSoda(), "...glug...,Yummy Cherry Soda!,...glug...,Yummy Cherry Soda!")
			superSizeSoda = SuperSizeSoda()
			self.assertEqual(superSizeSoda.pourSoda(), "...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ")


		def testGrapePlatform() :
			sodaImpSingleton = SodaImpSingleton(GrapeSodaImp())
			mediumSoda = MediumSoda()
			self.assertEqual(mediumSoda.pourSoda(), "...glug...,Delicious Grape Soda!,...glug...,Delicious Grape Soda!")
			superSizeSoda = SuperSizeSoda()
			self.assertEqual(superSizeSoda.pourSoda(), "...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ")


		def testOrangePlatform() :
			sodaImpSingleton = SodaImpSingleton(OrangeSodaImp())
			mediumSoda = MediumSoda()
			self.assertEqual(mediumSoda.pourSoda(), "...glug...,Citrusy Orange Soda!,...glug...,Citrusy Orange Soda!")
			superSizeSoda = SuperSizeSoda()
			self.assertEqual(superSizeSoda.pourSoda(), "...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ")

		testCherryPlatform()
		testGrapePlatform()
		testOrangePlatform()
