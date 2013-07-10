(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Decorator/Tea'], function(Tea) {
    var TeaLeaves;
    TeaLeaves = (function(_super) {
      __extends(TeaLeaves, _super);

      function TeaLeaves() {
        this.teaIsSteeped = false;
      }

      TeaLeaves.prototype.steepTea = function() {
        this.teaIsSteeped = true;
        return "tea leaves are steeping";
      };

      return TeaLeaves;

    })(Tea);
    return TeaLeaves;
  });

}).call(this);
