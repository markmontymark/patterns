(function() {
  define([], function() {
    var SodaImpSingleton;
    SodaImpSingleton = (function() {
      SodaImpSingleton.sodaImp = null;

      function SodaImpSingleton(sodaImpIn) {
        SodaImpSingleton.sodaImp = sodaImpIn;
      }

      SodaImpSingleton.getTheSodaImp = function() {
        return SodaImpSingleton.sodaImp;
      };

      return SodaImpSingleton;

    })();
    return SodaImpSingleton;
  });

}).call(this);
