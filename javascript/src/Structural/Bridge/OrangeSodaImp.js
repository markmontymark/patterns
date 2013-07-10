(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Bridge/SodaImp'], function(SodaImp) {
    var OrangeSodaImp;
    OrangeSodaImp = (function(_super) {
      __extends(OrangeSodaImp, _super);

      function OrangeSodaImp() {}

      OrangeSodaImp.prototype.pourSodaImp = function() {
        return "Citrusy Orange Soda!";
      };

      return OrangeSodaImp;

    })(SodaImp);
    return OrangeSodaImp;
  });

}).call(this);
