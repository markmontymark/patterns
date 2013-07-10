(function() {
  define(['Structural/Decorator/TeaLeaves', 'Structural/Decorator/ChaiDecorator'], function(TeaLeaves, ChaiDecorator) {
    'use strict';
    return describe('Test Structural Decorator', function() {
      return it('Can we brew some chai?', function() {
        var chaiDecorator, teaLeaves;
        teaLeaves = new TeaLeaves();
        chaiDecorator = new ChaiDecorator(teaLeaves);
        return expect(chaiDecorator.steepTea()).toEqual("bay leaf is steeping ,cinnamon stick is steeping ,ginger is steeping ,honey is steeping ,soy milk is steeping ,vanilla bean is steeping , tea is steeping with chai");
      });
    });
  });

}).call(this);
