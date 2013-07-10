(function() {
  define([], function() {
    var AbstractSpoon;
    AbstractSpoon = (function() {
      function AbstractSpoon() {
        console.warn("in AbstractSpoon ctor");
        throw "Can't instantiate abstract class, AbstractSpoon";
      }

      AbstractSpoon.prototype.spoonName = null;

      AbstractSpoon.prototype.setSpoonName = function(spoonName) {
        return this.spoonName = spoonName;
      };

      AbstractSpoon.prototype.getSpoonName = function() {
        return this.spoonName;
      };

      AbstractSpoon.prototype.clone = function() {
        return Object.create(this);
      };

      return AbstractSpoon;

    })();
    return AbstractSpoon;
  });

}).call(this);
