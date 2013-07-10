(function() {
  define([], function() {
    var DvdRelease;
    return DvdRelease = (function() {
      function DvdRelease(serialNumber, dvdName, dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) {
        this.serialNumber = serialNumber;
        this.dvdName = dvdName;
        this.dvdReleaseYear = dvdReleaseYear;
        this.dvdReleaseMonth = dvdReleaseMonth;
        this.dvdReleaseDay = dvdReleaseDay;
      }

      DvdRelease.prototype.updateDvdRelease = function(serialNumber, dvdName, dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) {
        this.serialNumber = serialNumber;
        this.dvdName = dvdName;
        this.dvdReleaseYear = dvdReleaseYear;
        this.dvdReleaseMonth = dvdReleaseMonth;
        return this.dvdReleaseDay = dvdReleaseDay;
      };

      DvdRelease.prototype.updateDvdReleaseDate = function(dvdReleaseYear, dvdReleaseMonth, dvdReleaseDay) {
        this.dvdReleaseYear = dvdReleaseYear;
        this.dvdReleaseMonth = dvdReleaseMonth;
        return this.dvdReleaseDay = dvdReleaseDay;
      };

      return DvdRelease;

    })();
  });

}).call(this);
