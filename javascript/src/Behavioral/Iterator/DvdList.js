(function() {
  define(['Behavioral/Iterator/DvdListIterator'], function(DvdListIterator) {
    var DvdList;
    return DvdList = (function() {
      function DvdList(titles, titleCount, arraySize) {
        this.titles = titles != null ? titles : [];
        this.titleCount = titleCount != null ? titleCount : 0;
        this.arraySize = arraySize != null ? arraySize : 0;
        this.iterator = null;
      }

      DvdList.prototype.append = function(title) {
        this.titles.push(title);
        return this.titleCount++;
      };

      DvdList.prototype.remove = function(title) {
        var founds, i, t, _i;
        founds = (function() {
          var _i, _len, _ref, _results;
          _ref = this.titles;
          _results = [];
          for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
            t = _ref[i];
            if (title === t) {
              _results.push(i);
            }
          }
          return _results;
        }).call(this);
        if (founds.length > 0) {
          for (_i = founds.length - 1; _i >= 0; _i += -1) {
            i = founds[_i];
            this.titleCount--;
          }
          return this.titles.splice(i, 1);
        }
      };

      DvdList.prototype.createIterator = function() {
        if (this.iterator) {
          return this.iterator;
        }
        this.iterator = new DvdListIterator(this);
        return this.iterator;
      };

      return DvdList;

    })();
  });

}).call(this);
