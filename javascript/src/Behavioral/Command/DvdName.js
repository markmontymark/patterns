(function() {
  define([], function() {
    var DvdName;
    return DvdName = (function() {
      DvdName.prototype.titleName = null;

      function DvdName(titleName) {
        this.titleName = titleName;
      }

      DvdName.prototype.setTitleName = function(titleNameIn) {
        return this.titleName = titleNameIn;
      };

      DvdName.prototype.getTitleName = function() {
        return this.titleName;
      };

      DvdName.prototype.setNameStarsOn = function() {
        return this.setTitleName(this.getTitleName().replace(' ', '*'));
      };

      DvdName.prototype.setNameStarsOff = function() {
        return this.setTitleName(this.getTitleName().replace('*', ' '));
      };

      DvdName.prototype.toString = function() {
        return "DVD: " + (this.getTitleName());
      };

      return DvdName;

    })();
  });

}).call(this);
