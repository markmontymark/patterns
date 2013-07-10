(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Composite/TeaBags'], function(TeaBags) {
    var OneTeaBag;
    OneTeaBag = (function(_super) {
      __extends(OneTeaBag, _super);

      function OneTeaBag(name) {
        this.name = name;
      }

      OneTeaBag.prototype.countTeaBags = function() {
        return 1;
      };

      OneTeaBag.prototype.add = function() {
        return false;
      };

      OneTeaBag.prototype.remove = function() {
        return false;
      };

      OneTeaBag.prototype.createListIterator = function() {
        return null;
      };

      return OneTeaBag;

    })(TeaBags);
    return OneTeaBag;
  });

}).call(this);
