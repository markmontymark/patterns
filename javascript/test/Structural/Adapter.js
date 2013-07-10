(function() {
  define(['Structural/Adapter/TeaBag', 'Structural/Adapter/TeaCup', 'Structural/Adapter/TeaBall', 'Structural/Adapter/LooseLeafTea'], function(TeaBag, TeaCup, TeaBall, LooseLeafTea) {
    'use strict';
    return describe('Test Structural Adapter', function() {
      it('Steeping tea bag', function() {
        var teaBag, teaCup;
        teaCup = new TeaCup();
        teaBag = new TeaBag();
        return expect(teaCup.steepTeaBag(teaBag)).toEqual("tea bag is steeping in cup");
      });
      return it('Steeping loose leaf tea', function() {
        var looseLeafTea, teaBall, teaCup;
        teaCup = new TeaCup();
        looseLeafTea = new LooseLeafTea();
        teaBall = new TeaBall(looseLeafTea);
        return expect(teaCup.steepTeaBag(teaBall)).toBeTruthy();
      });
    });
  });

}).call(this);
