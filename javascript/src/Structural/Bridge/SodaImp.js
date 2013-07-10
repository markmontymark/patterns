(function() {
  define([], function() {
    var SodaImp;
    SodaImp = (function() {
      function SodaImp() {
        throw "Can't instantiate abstract class, SodaImp";
      }

      SodaImp.prototype.pourSodaImp = function() {
        throw "Unimplemented method, SodaImp.pourSodaImp";
      };

      return SodaImp;

    })();
    return SodaImp;
  });

}).call(this);
