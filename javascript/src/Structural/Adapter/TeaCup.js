(function() {
  define([], function() {
    var TeaCup;
    TeaCup = (function() {
      function TeaCup() {}

      TeaCup.prototype.steepTeaBag = function(teaBag) {
        return teaBag.steepTeaInCup();
      };

      return TeaCup;

    })();
    return TeaCup;
  });

}).call(this);
