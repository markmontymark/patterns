(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Factory_Method/ClamChowder'], function(ClamChowder) {
    var BostonClamChowder;
    BostonClamChowder = (function(_super) {
      __extends(BostonClamChowder, _super);

      function BostonClamChowder() {
        this.soupName = 'QuahogChowder';
        this.soupIngredients = ['1 Pound Fresh Quahogs', '1 cup corn', '1/2 cup heavy cream', '1/4 cup butter', '1/4 cup potato chips'];
      }

      return BostonClamChowder;

    })(ClamChowder);
    return BostonClamChowder;
  });

}).call(this);
