(function() {
  define(['Structural/Proxy/PotOfTeaProxy'], function(PotOfTeaProxy) {
    'use strict';
    return describe('Test Structural Proxy', function() {
      return it('Pouring tea', function() {
        var potOfTea;
        potOfTea = new PotOfTeaProxy();
        return expect(potOfTea.pourTea()).toEqual('Pouring tea');
      });
    });
  });

}).call(this);
