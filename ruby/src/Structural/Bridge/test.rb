
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
			SodaImpSingleton(CherrySodaImp())
			mediumSoda = MediumSoda()
			self.assertEqual( ','.join(mediumSoda.pourSoda()), "...glug...,Yummy Cherry Soda!,...glug...,Yummy Cherry Soda!")
			superSizeSoda = SuperSizeSoda()
			self.assertEqual( ','.join(superSizeSoda.pourSoda()), "...glug...,Yummy Cherry Soda!,...glug...,Yummy Cherry Soda!,...glug...,Yummy Cherry Soda!,...glug...,Yummy Cherry Soda!,...glug...,Yummy Cherry Soda!")


		def testGrapePlatform() :
			SodaImpSingleton(GrapeSodaImp())
			mediumSoda = MediumSoda()
			self.assertEqual( ','.join(mediumSoda.pourSoda()), "...glug...,Delicious Grape Soda!,...glug...,Delicious Grape Soda!")
			superSizeSoda = SuperSizeSoda()
			self.assertEqual( ','.join(superSizeSoda.pourSoda()), "...glug...,Delicious Grape Soda!,...glug...,Delicious Grape Soda!,...glug...,Delicious Grape Soda!,...glug...,Delicious Grape Soda!,...glug...,Delicious Grape Soda!")


		def testOrangePlatform() :
			SodaImpSingleton(OrangeSodaImp())
			mediumSoda = MediumSoda()
			self.assertEqual(','.join(mediumSoda.pourSoda()), "...glug...,Citrusy Orange Soda!,...glug...,Citrusy Orange Soda!")
			superSizeSoda = SuperSizeSoda()
			self.assertEqual(','.join(superSizeSoda.pourSoda()), "...glug...,Citrusy Orange Soda!,...glug...,Citrusy Orange Soda!,...glug...,Citrusy Orange Soda!,...glug...,Citrusy Orange Soda!,...glug...,Citrusy Orange Soda!")

		testCherryPlatform()
		testGrapePlatform()
		testOrangePlatform()
