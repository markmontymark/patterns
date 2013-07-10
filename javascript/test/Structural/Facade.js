(function() {
  define(['Structural/Facade/FacadeCuppaMaker'], function(FacadeCuppaMaker) {
    'use strict';
    return describe('Test Structural Facade', function() {
      return it('Make a cuppa with a FacadeCuppaMaker', function() {
        var cuppaMaker, teaCup;
        cuppaMaker = new FacadeCuppaMaker();
        expect(cuppaMaker).toBeDefined();
        teaCup = cuppaMaker.makeACuppa();
        expect(teaCup).toBeDefined();
        return expect(teaCup.toString()).toEqual("A nice cuppa tea!");
      });
    });
  });

}).call(this);
