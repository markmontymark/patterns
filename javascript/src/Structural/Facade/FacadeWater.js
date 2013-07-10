(function() {
  define([], function() {
    var FacadeWater;
    FacadeWater = (function() {
      FacadeWater.prototype.waterIsBoiling = null;

      function FacadeWater() {
        this.setWaterIsBoiling(false);
      }

      FacadeWater.prototype.boilFacadeWater = function() {
        this.setWaterIsBoiling(true);
        return "water is boiling";
      };

      FacadeWater.prototype.setWaterIsBoiling = function(isWaterBoiling) {
        return this.waterIsBoiling = isWaterBoiling;
      };

      FacadeWater.prototype.getWaterIsBoiling = function() {
        return this.waterIsBoiling;
      };

      return FacadeWater;

    })();
    return FacadeWater;
  });

}).call(this);
