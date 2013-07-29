

# - the Client, tests the Flyweight

from TeaFlavor import TeaFlavor
from TeaOrderContext import TeaOrderContext
from TeaFlavorFactory import TeaFlavorFactory

import unittest
 
class TestStructuralFlyweight( unittest.TestCase ):
	def test(self):
		flavors = []# //the flavors ordered
		tables = [] # //the tables for the orders
		ordersMade = 0
		teaFlavorFactory = TeaFlavorFactory()

		def takeOrders(flavorIn, table) :
			flavors.append(teaFlavorFactory.getTeaFlavor(flavorIn))
			tables.append( TeaOrderContext(table))
			ordersMade += 1

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

		for i in range(ordersMade) :
			flavors[i].serveTea(tables[i])

		self.assertEqual("total teaFlavor objects made: {0}", teaFlavorFactory.getTotalTeaFlavorsMade())
