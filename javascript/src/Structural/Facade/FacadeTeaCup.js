(function() {
  define([], function() {
    var FacadeTeaCup;
    FacadeTeaCup = (function() {
      FacadeTeaCup.prototype.teaBagIsSteeped = null;

      FacadeTeaCup.prototype.facadeWater = null;

      FacadeTeaCup.prototype.facadeTeaBag = null;

      function FacadeTeaCup() {
        this.setTeaBagIsSteeped(false);
      }

      FacadeTeaCup.prototype.setTeaBagIsSteeped = function(isTeaBagSteeped) {
        return this.teaBagIsSteeped = isTeaBagSteeped;
      };

      FacadeTeaCup.prototype.getTeaBagIsSteeped = function() {
        return this.teaBagIsSteeped;
      };

      FacadeTeaCup.prototype.addFacadeTeaBag = function(facadeTeaBagIn) {
        this.facadeTeaBag = facadeTeaBagIn;
        return "the tea bag is in the tea cup";
      };

      FacadeTeaCup.prototype.addFacadeWater = function(facadeWaterIn) {
        this.facadeWater = facadeWaterIn;
        return "the water is in the tea cup";
      };

      FacadeTeaCup.prototype.steepTeaBag = function() {
        if (this.facadeTeaBag && this.facadeWater && this.facadeWater.getWaterIsBoiling()) {
          this.setTeaBagIsSteeped(true);
          return "the tea is steeping in the cup";
        }
        this.setTeaBagIsSteeped(false);
        return "the tea is not steeping in the cup";
      };

      FacadeTeaCup.prototype.toString = function() {
        var retval;
        if (this.getTeaBagIsSteeped()) {
          return "A nice cuppa tea!";
        }
        retval = ["A cup with "];
        if (this.facadeWater) {
          if (this.facadeWater.getWaterIsBoiling()) {
            retval.push("boiling water ");
          } else {
            retval.push("cold water ");
          }
        } else {
          retval.push("no water ");
        }
        if (this.facadeTeaBag) {
          retval.push("and a tea bag");
        } else {
          retval.push("and no tea bag");
        }
        return retval.join('');
      };

      return FacadeTeaCup;

    })();
    return FacadeTeaCup;
  });

}).call(this);
