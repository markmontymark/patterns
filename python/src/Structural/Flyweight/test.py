

# - the Client, tests the Flyweight

from TeaFlavor import TeaFlavor
from TeaOrderContext import TeaOrderContext
from TeaFlavorFactory import TeaFlavorFactory

import unittest
 
class TestStructuralFlyweight( unittest.TestCase ):

	flavors = []# //the flavors ordered
	tables = [] # //the tables for the orders
	ordersMade = 0
	teaFlavorFactory = TeaFlavorFactory()

	def test(self):

		def takeOrders(flavorIn, table) :
			self.flavors.append(self.teaFlavorFactory.getTeaFlavor(flavorIn))
			self.tables.append( TeaOrderContext(table))
			self.ordersMade += 1

		takeOrders("chai", 2)
		takeOrders("chai", 2)
		takeOrders("camomile", 1)
		takeOrders("camomile", 1)
		takeOrders("earl grey", 1)
		takeOrders("camomile", 897)
		takeOrders("chai", 97)
		takeOrders("chai", 97)
		takeOrders("camomile", 3)
		takeOrders("earl grey", 3)
		takeOrders("chai", 3)
		takeOrders("earl grey", 96)
		takeOrders("camomile", 552)
		takeOrders("chai", 121)
		takeOrders("earl grey", 121)

		for i in range(self.ordersMade) :
			self.flavors[i].serveTea( self.tables[i])

		self.assertEqual( 3 , self.teaFlavorFactory.getTotalTeaFlavorsMade())
