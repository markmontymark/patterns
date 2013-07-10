(function() {
  define([], function() {
    var TeaBag;
    TeaBag = (function() {
      TeaBag.prototype.teaBagIsSteeped = null;

      function TeaBag() {
        this.teaBagIsSteeped = false;
      }

      TeaBag.prototype.steepTeaInCup = function() {
        this.teaBagIsSteeped = true;
        return 'tea bag is steeping in cup';
      };

      return TeaBag;

    })();
    return TeaBag;
  });

}).call(this);
