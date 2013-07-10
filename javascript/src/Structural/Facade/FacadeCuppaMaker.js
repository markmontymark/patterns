(function() {
  define(['Structural/Facade/FacadeTeaCup', 'Structural/Facade/FacadeTeaBag', 'Structural/Facade/FacadeWater'], function(FacadeTeaCup, FacadeTeaBag, FacadeWater) {
    var FacadeCuppaMaker;
    FacadeCuppaMaker = (function() {
      function FacadeCuppaMaker() {}

      FacadeCuppaMaker.prototype.teaBagIsSteeped = null;

      FacadeCuppaMaker.prototype.makeACuppa = function() {
        var cup, teaBag, water;
        cup = new FacadeTeaCup();
        teaBag = new FacadeTeaBag();
        water = new FacadeWater();
        cup.addFacadeTeaBag(teaBag);
        water.boilFacadeWater();
        cup.addFacadeWater(water);
        cup.steepTeaBag();
        return cup;
      };

      return FacadeCuppaMaker;

    })();
    return FacadeCuppaMaker;
  });

}).call(this);
