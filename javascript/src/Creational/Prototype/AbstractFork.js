(function() {
  define([], function() {
    var AbstractFork;
    AbstractFork = (function() {
      function AbstractFork() {
        throw "Can't instantiate abstract class, AbstractFork";
      }

      AbstractFork.prototype.forkName = null;

      AbstractFork.prototype.setForkName = function(forkName) {
        return this.forkName = forkName;
      };

      AbstractFork.prototype.getForkName = function() {
        return this.forkName;
      };

      AbstractFork.prototype.clone = function() {
        return Object.create(this);
      };

      return AbstractFork;

    })();
    return AbstractFork;
  });

}).call(this);
