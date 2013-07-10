(function() {
  define([], function() {
    var Tea;
    Tea = (function() {
      function Tea() {}

      Tea.prototype.teaIsSteeped = null;

      Tea.prototype.steepTea = function() {
        throw "Unimplemented method, Tea.steepTea";
      };

      return Tea;

    })();
    return Tea;
  });

}).call(this);
