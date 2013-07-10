(function() {
  define([], function() {
    var LooseLeafTea;
    LooseLeafTea = (function() {
      LooseLeafTea.prototype.teaIsSteeped = null;

      function LooseLeafTea() {
        this.teaIsSteeped = false;
      }

      LooseLeafTea.prototype.steepTea = function() {
        this.teaIsSteeped = true;
        return 'tea is steeping';
      };

      return LooseLeafTea;

    })();
    return LooseLeafTea;
  });

}).call(this);
