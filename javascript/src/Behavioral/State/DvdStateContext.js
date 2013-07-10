(function() {
  define(['Behavioral/State/DvdStateName', 'Behavioral/State/DvdStateNameStars'], function(DvdStateName, DvdStateNameStars) {
    var DvdStateContext;
    return DvdStateContext = (function() {
      DvdStateContext.prototype.dvdStateName = null;

      function DvdStateContext() {
        this.setDvdStateName(new DvdStateNameStars());
      }

      DvdStateContext.prototype.setDvdStateName = function(dvdStateNameIn) {
        return this.dvdStateName = dvdStateNameIn;
      };

      DvdStateContext.prototype.showName = function(nameIn) {
        return this.dvdStateName.showName(this, nameIn);
      };

      return DvdStateContext;

    })();
  });

}).call(this);
