(function() {
  define(['Structural/Flyweight/TeaFlavor', 'Structural/Flyweight/TeaOrderContext', 'Structural/Flyweight/TeaFlavorFactory'], function(TeaFlavor, TeaOrderContext, TeaFlavorFactory) {
    'use strict';
    return describe('Test Structural / Flyweight', function() {
      return it('Make 100 tea flavors', function() {
        var flavors, i, ordersMade, tables, takeOrders, teaFlavorFactory, _i, _ref;
        flavors = [];
        tables = [];
        ordersMade = 0;
        teaFlavorFactory = new TeaFlavorFactory();
        takeOrders = function(flavorIn, table) {
          flavors.push(teaFlavorFactory.getTeaFlavor(flavorIn));
          tables.push(new TeaOrderContext(table));
          return ordersMade++;
        };
        takeOrders("chai", 2);
        takeOrders("chai", 2);
        takeOrders("camomile", 1);
        takeOrders("camomile", 1);
        takeOrders("earl grey", 1);
        takeOrders("camomile", 897);
        takeOrders("chai", 97);
        takeOrders("chai", 97);
        takeOrders("camomile", 3);
        takeOrders("earl grey", 3);
        takeOrders("chai", 3);
        takeOrders("earl grey", 96);
        takeOrders("camomile", 552);
        takeOrders("chai", 121);
        takeOrders("earl grey", 121);
        for (i = _i = 0, _ref = ordersMade - 1; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
          flavors[i].serveTea(tables[i]);
        }
        return expect("total teaFlavor objects made: " + (teaFlavorFactory.getTotalTeaFlavorsMade())).toEqual("total teaFlavor objects made: 3");
      });
    });
  });

}).call(this);
