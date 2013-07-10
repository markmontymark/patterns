(function() {
  define([], function() {
    'use strict';
    var SingleSpoon;
    SingleSpoon = (function() {
      SingleSpoon.soupLastUsedWith = null;

      SingleSpoon.theSpoon = null;

      SingleSpoon.theSpoonIsAvailable = true;

      function SingleSpoon() {
        if (SingleSpoon.theSpoon === null) {
          SingleSpoon.theSpoon = SingleSpoon.prototype;
        }
        return SingleSpoon.theSpoon;
      }

      SingleSpoon.prototype.toString = function() {
        return "Behold the glorious single spoon!";
      };

      SingleSpoon.prototype.returnTheSpoon = function() {
        SingleSpoon.theSpoon.cleanSpoon();
        return SingleSpoon.theSpoonIsAvailable = true;
      };

      SingleSpoon.prototype.getTheSpoon = function() {
        if (SingleSpoon.theSpoonIsAvailable) {
          SingleSpoon.theSpoonIsAvailable = false;
          return SingleSpoon.theSpoon;
        }
        return null;
      };

      SingleSpoon.prototype.getSoupLastUsedWith = function() {
        return SingleSpoon.soupLastUsedWith;
      };

      SingleSpoon.prototype.setSoupLastUsedWith = function(soup) {
        return SingleSpoon.soupLastUsedWith = soup;
      };

      SingleSpoon.prototype.cleanSpoon = function() {
        return this.setSoupLastUsedWith(null);
      };

      return SingleSpoon;

    })();
    return SingleSpoon;
  });

}).call(this);
