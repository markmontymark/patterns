(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Prototype/AbstractSpoon'], function(AbstractSpoon) {
    var SoupSpoon;
    SoupSpoon = (function(_super) {
      __extends(SoupSpoon, _super);

      function SoupSpoon() {
        this.setSpoonName('Soup Spoon');
      }

      return SoupSpoon;

    })(AbstractSpoon);
    return SoupSpoon;
  });

}).call(this);
