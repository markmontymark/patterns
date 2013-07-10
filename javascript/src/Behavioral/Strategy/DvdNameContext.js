(function() {
  define(['Behavioral/Strategy/DvdNameAllCapStrategy', 'Behavioral/Strategy/DvdNameTheAtEndStrategy', 'Behavioral/Strategy/DvdNameReplaceSpacesStrategy'], function(DvdNameAllCapStrategy, DvdNameTheAtEndStrategy, DvdNameReplaceSpacesStrategy) {
    var DvdNameContext;
    return DvdNameContext = (function() {
      DvdNameContext.prototype.dvdNameStrategy = null;

      function DvdNameContext(strategyTypeIn) {
        switch (strategyTypeIn) {
          case 'C':
            this.dvdNameStrategy = new DvdNameAllCapStrategy();
            break;
          case 'E':
            this.dvdNameStrategy = new DvdNameTheAtEndStrategy();
            break;
          case 'S':
            this.dvdNameStrategy = new DvdNameReplaceSpacesStrategy();
            break;
          default:
            this.dvdNameStrategy = new DvdNameTheAtEndStrategy();
        }
      }

      DvdNameContext.prototype.formatDvdNames = function(names, replacementIn) {
        var name;
        if (replacementIn == null) {
          replacementIn = ' ';
        }
        return ((function() {
          var _i, _len, _results;
          _results = [];
          for (_i = 0, _len = names.length; _i < _len; _i++) {
            name = names[_i];
            _results.push("Dvd name before formatting: " + name + "\nDvd name after formatting:  " + (this.dvdNameStrategy.formatDvdName(name, replacementIn)) + "\n==========================");
          }
          return _results;
        }).call(this)).join('\n');
      };

      return DvdNameContext;

    })();
  });

}).call(this);
