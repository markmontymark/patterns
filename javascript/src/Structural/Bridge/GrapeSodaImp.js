(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Bridge/SodaImp'], function(SodaImp) {
    var GrapeSodaImp;
    GrapeSodaImp = (function(_super) {
      __extends(GrapeSodaImp, _super);

      function GrapeSodaImp() {}

      GrapeSodaImp.prototype.pourSodaImp = function() {
        return "Delicious Grape Soda!";
      };

      return GrapeSodaImp;

    })(SodaImp);
    return GrapeSodaImp;
  });

}).call(this);
