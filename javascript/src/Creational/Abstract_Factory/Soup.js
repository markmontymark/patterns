(function() {
  define([], function() {
    var Soup;
    Soup = (function() {
      function Soup() {
        throw "Can't instantiate abstract class, Soup";
      }

      Soup.prototype.toString = function() {
        var i, retval;
        retval = (function() {
          var _i, _len, _ref, _results;
          _ref = this.soupIngredients;
          _results = [];
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            i = _ref[_i];
            _results.push(i);
          }
          return _results;
        }).call(this);
        retval.unshift(' Ingredients: ');
        retval.unshift(this.soupName);
        return retval.toString();
      };

      return Soup;

    })();
    return Soup;
  });

}).call(this);
