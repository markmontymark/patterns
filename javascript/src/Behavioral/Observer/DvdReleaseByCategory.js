(function() {
  define([], function() {
    var DvdReleaseByCategory;
    return DvdReleaseByCategory = (function() {
      function DvdReleaseByCategory(categoryName, subscriberList, dvdReleaseList) {
        this.categoryName = categoryName;
        this.subscriberList = subscriberList != null ? subscriberList : [];
        this.dvdReleaseList = dvdReleaseList != null ? dvdReleaseList : [];
      }

      DvdReleaseByCategory.prototype.getCategoryName = function() {
        return this.categoryName;
      };

      DvdReleaseByCategory.prototype.addSubscriber = function(dvdSubscriber) {
        return this.subscriberList.push(dvdSubscriber);
      };

      DvdReleaseByCategory.prototype.removeSubscriber = function(dvdSubscriber) {
        var founds, i, subscriber;
        founds = (function() {
          var _i, _len, _ref, _results;
          _ref = this.subscriberList;
          _results = [];
          for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
            subscriber = _ref[i];
            if (subscriber === dvdSubscriber) {
              _results.push(i);
            }
          }
          return _results;
        }).call(this);
        if (founds.length > 0) {
          this.subscriberList.splice(i, 1);
          return true;
        }
        return false;
      };

      DvdReleaseByCategory.prototype.newDvdRelease = function(dvdRelease) {
        this.dvdReleaseList.push(dvdRelease);
        return this.notifySubscribersOfNewDvd(dvdRelease);
      };

      DvdReleaseByCategory.prototype.updateDvd = function(dvdRelease) {
        var dvdUpdated, i, rel, _i, _len, _ref;
        dvdUpdated = false;
        _ref = this.dvdReleaseList;
        for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
          rel = _ref[i];
          if (dvdRelease.serialNumber === rel.serialNumber) {
            this.dvdReleaseList.splice(i, 1);
            this.dvdReleaseList.push(dvdRelease);
            dvdUpdated = true;
            break;
          }
        }
        if (dvdUpdated) {
          return this.notifySubscribersOfUpdate(dvdRelease);
        } else {
          return this.newDvdRelease(dvdRelease);
        }
      };

      DvdReleaseByCategory.prototype.notifySubscribersOfNewDvd = function(dvdRelease) {
        var s, _i, _len, _ref, _results;
        _ref = this.subscriberList;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          s = _ref[_i];
          _results.push(s.newDvdRelease(dvdRelease, this.getCategoryName()));
        }
        return _results;
      };

      DvdReleaseByCategory.prototype.notifySubscribersOfUpdate = function(dvdRelease) {
        var s, _i, _len, _ref, _results;
        _ref = this.subscriberList;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          s = _ref[_i];
          _results.push(s.updateDvdRelease(dvdRelease, this.getCategoryName()));
        }
        return _results;
      };

      return DvdReleaseByCategory;

    })();
  });

}).call(this);
