(function() {
  define(['Structural/Bridge/SodaImpSingleton', 'Structural/Bridge/Soda', 'Structural/Bridge/CherrySodaImp', 'Structural/Bridge/GrapeSodaImp', 'Structural/Bridge/OrangeSodaImp', 'Structural/Bridge/MediumSoda', 'Structural/Bridge/SuperSizeSoda'], function(SodaImpSingleton, Soda, CherrySodaImp, GrapeSodaImp, OrangeSodaImp, MediumSoda, SuperSizeSoda) {
    'use strict';
    var testCherryPlatform, testGrapePlatform, testOrangePlatform;
    testCherryPlatform = function() {
      return describe('testing on the cherry platform', function() {
        return it('test medium and supersize', function() {
          var mediumSoda, sodaImpSingleton, superSizeSoda;
          sodaImpSingleton = new SodaImpSingleton(new CherrySodaImp());
          mediumSoda = new MediumSoda();
          expect(mediumSoda).toBeDefined();
          expect(mediumSoda.pourSoda()).toEqual("...glug...,Yummy Cherry Soda!,...glug...,Yummy Cherry Soda!");
          superSizeSoda = new SuperSizeSoda();
          return expect(superSizeSoda.pourSoda()).toEqual("...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ,...glug...,Yummy Cherry Soda!, ");
        });
      });
    };
    testGrapePlatform = function() {
      return describe('testing on the grape platform', function() {
        return it('test medium and supersize', function() {
          var mediumSoda, sodaImpSingleton, superSizeSoda;
          sodaImpSingleton = new SodaImpSingleton(new GrapeSodaImp());
          mediumSoda = new MediumSoda();
          expect(mediumSoda.pourSoda()).toEqual("...glug...,Delicious Grape Soda!,...glug...,Delicious Grape Soda!");
          superSizeSoda = new SuperSizeSoda();
          return expect(superSizeSoda.pourSoda()).toEqual("...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ,...glug...,Delicious Grape Soda!, ");
        });
      });
    };
    testOrangePlatform = function() {
      return describe('testing on the orange platform', function() {
        return it('test medium and supersize', function() {
          var mediumSoda, sodaImpSingleton, superSizeSoda;
          sodaImpSingleton = new SodaImpSingleton(new OrangeSodaImp());
          mediumSoda = new MediumSoda();
          expect(mediumSoda.pourSoda()).toEqual("...glug...,Citrusy Orange Soda!,...glug...,Citrusy Orange Soda!");
          superSizeSoda = new SuperSizeSoda();
          return expect(superSizeSoda.pourSoda()).toEqual("...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ,...glug...,Citrusy Orange Soda!, ");
        });
      });
    };
    testCherryPlatform();
    testGrapePlatform();
    return testOrangePlatform();
  });

}).call(this);
