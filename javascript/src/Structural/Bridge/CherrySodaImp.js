(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Bridge/SodaImp'], function(SodaImp) {
    var CherrySodaImp;
    CherrySodaImp = (function(_super) {
      __extends(CherrySodaImp, _super);

      function CherrySodaImp() {}

      CherrySodaImp.prototype.pourSodaImp = function() {
        return "Yummy Cherry Soda!";
      };

      return CherrySodaImp;

    })(SodaImp);
    return CherrySodaImp;
  });

}).call(this);
