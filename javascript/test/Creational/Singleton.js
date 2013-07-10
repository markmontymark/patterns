(function() {
  define(['Creational/Singleton/SingleSpoon'], function(SingleSpoon) {
    'use strict';
    var test;
    test = {};
    beforeEach(function() {
      return test.SingleSpoon = new SingleSpoon();
    });
    return describe('Singleton Class', function() {
      it('singleton should be loaded', function() {
        return expect(test.SingleSpoon).toBeDefined();
      });
      it('should have a singleSpoon instance', function() {
        var aSingleSpoon;
        aSingleSpoon = new SingleSpoon();
        return expect(aSingleSpoon).toEqual(test.SingleSpoon);
      });
      it('get the spoon from the SingleSpoon instance', function() {
        var spoon;
        spoon = test.SingleSpoon.getTheSpoon();
        return expect(spoon).toBeDefined();
      });
      it('try to get the spoon again, it should already be in use', function() {
        var spoon;
        spoon = test.SingleSpoon.getTheSpoon();
        return expect(spoon).toBeNull();
      });
      return it('return the spoon again', function() {
        var spoon;
        spoon = test.SingleSpoon.getTheSpoon();
        expect(spoon).toBeNull();
        test.SingleSpoon.returnTheSpoon();
        spoon = test.SingleSpoon.getTheSpoon();
        return expect(spoon).toBeDefined();
      });
    });
  });

}).call(this);
