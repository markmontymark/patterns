

#//TestFlyweight.java - the Client, tests the Flyweight

define ['Structural/Flyweight/TeaFlavor',
'Structural/Flyweight/TeaOrderContext',
'Structural/Flyweight/TeaFlavorFactory'
],(
TeaFlavor,
TeaOrderContext,
TeaFlavorFactory
) ->

  'use strict'
  
  describe 'Test Structural / Flyweight', ->
    it 'Make 100 tea flavors', ->
      flavors = []# //the flavors ordered
      tables = [] # //the tables for the orders
      ordersMade = 0
      teaFlavorFactory = new TeaFlavorFactory()

      takeOrders = (flavorIn, table) ->
        flavors.push(teaFlavorFactory.getTeaFlavor(flavorIn))
        tables.push( new TeaOrderContext(table))
        ordersMade++

      takeOrders "chai", 2
      takeOrders "chai", 2
      takeOrders "camomile", 1
      takeOrders "camomile", 1
      takeOrders "earl grey", 1
      takeOrders "camomile", 897
      takeOrders "chai", 97
      takeOrders "chai", 97
      takeOrders "camomile", 3
      takeOrders "earl grey", 3
      takeOrders "chai", 3
      takeOrders "earl grey", 96
      takeOrders "camomile", 552
      takeOrders "chai", 121
      takeOrders "earl grey", 121

      for i in [0..(ordersMade-1)]
        flavors[i].serveTea(tables[i])

      self.assertEqual("total teaFlavor objects made: #{teaFlavorFactory.getTotalTeaFlavorsMade()}", "total teaFlavor objects made: 3")
