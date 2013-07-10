(function() {
  define(['Structural/Bridge/SodaImpSingleton'], function(SodaImpSingleton) {
    var Soda;
    Soda = (function() {
      Soda.prototype.sodaImp = null;

      function Soda() {
        throw "Can't instantiate abstract class, Soda";
      }

      Soda.prototype.setSodaImp = function() {
        return this.sodaImp = SodaImpSingleton.getTheSodaImp();
      };

      Soda.prototype.getSodaImp = function() {
        return this.sodaImp;
      };

      Soda.prototype.pourSoda = function() {
        throw "Unimplemented method Soda.pourSoda";
      };

      return Soda;

    })();
    return Soda;
  });

}).call(this);
