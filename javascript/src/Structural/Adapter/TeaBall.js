(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Adapter/TeaBag'], function(TeaBag) {
    var TeaBall;
    TeaBall = (function(_super) {
      __extends(TeaBall, _super);

      TeaBall.prototype.looseLeafTea = null;

      function TeaBall(looseLeafTea) {
        this.looseLeafTea = looseLeafTea;
        this.teaBagIsSteeped = this.looseLeafTea.teaIsSteeped;
      }

      TeaBall.prototype.steepTeaInCup = function() {
        this.looseLeafTea.steepTea();
        return this.teaBagIsSteeped = true;
      };

      return TeaBall;

    })(TeaBag);
    return TeaBall;
  });

}).call(this);
