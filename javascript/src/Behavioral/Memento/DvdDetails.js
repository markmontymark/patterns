(function() {
  define(['Behavioral/Memento/DvdMemento'], function(DvdMemento) {
    var DvdDetails;
    return DvdDetails = (function() {
      function DvdDetails(titleName, stars, region, memento) {
        this.titleName = titleName;
        this.stars = stars != null ? stars : [];
        this.region = region;
        this.memento = memento;
      }

      DvdDetails.prototype.addStar = function(star) {
        return this.stars.push(star);
      };

      DvdDetails.prototype.starsAsString = function() {
        return this.stars.join(', ');
      };

      DvdDetails.prototype.formatDvdDetails = function() {
        return "DVD: " + this.titleName + " starring: " + (this.starsAsString()) + " encoding region: " + this.region;
      };

      DvdDetails.prototype.setDvdMemento = function(memento) {
        var c, k, _results;
        for (k in this) {
          delete this[k];
        }
        c = memento.getState();
        _results = [];
        for (k in c) {
          _results.push(this[k] = c[k]);
        }
        return _results;
      };

      DvdDetails.prototype.createDvdMemento = function() {
        var mem;
        mem = new DvdMemento();
        mem.setState(this);
        return mem;
      };

      return DvdDetails;

    })();
  });

}).call(this);
