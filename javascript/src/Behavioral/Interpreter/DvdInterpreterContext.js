(function() {
  define([], function() {
    var DvdInterpreterContext;
    return DvdInterpreterContext = (function() {
      function DvdInterpreterContext(titles, actors, titlesAndActors) {
        this.titles = titles != null ? titles : [];
        this.actors = actors != null ? actors : [];
        this.titlesAndActors = titlesAndActors != null ? titlesAndActors : [];
      }

      DvdInterpreterContext.prototype.addTitle = function(title) {
        return this.titles.push(title);
      };

      DvdInterpreterContext.prototype.addActor = function(actor) {
        return this.actors.push(actor);
      };

      DvdInterpreterContext.prototype.addTitleAndActor = function(titleAndActor) {
        return this.titlesAndActors.push(titleAndActor);
      };

      DvdInterpreterContext.prototype.getAllTitles = function() {
        return this.titles;
      };

      DvdInterpreterContext.prototype.getAllActors = function() {
        return this.actors;
      };

      DvdInterpreterContext.prototype.getActorsForTitle = function(title) {
        var ta, _i, _len, _ref, _results;
        _ref = this.titlesAndActors;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          ta = _ref[_i];
          if (ta.getTitle() === title) {
            _results.push(ta.getActor());
          }
        }
        return _results;
      };

      DvdInterpreterContext.prototype.getTitlesForActor = function(actor) {
        var ta, _i, _len, _ref, _results;
        _ref = this.titlesAndActors;
        _results = [];
        for (_i = 0, _len = _ref.length; _i < _len; _i++) {
          ta = _ref[_i];
          if (ta.getActor() === actor) {
            _results.push(ta.getTitle());
          }
        }
        return _results;
      };

      return DvdInterpreterContext;

    })();
  });

}).call(this);
