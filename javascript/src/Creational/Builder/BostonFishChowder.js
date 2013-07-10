(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Builder/FishChowder'], function(FishChowder) {
    var BostonFishChowder;
    BostonFishChowder = (function(_super) {
      __extends(BostonFishChowder, _super);

      function BostonFishChowder() {
        this.soupName = 'ScrodFishChowder';
        this.soupIngredients = ['1 Pound Fresh Scrod', '1 cup corn', '1/2 cup heavy cream', '1/4 cup butter', '1/4 cup potato chips'];
      }

      return BostonFishChowder;

    })(FishChowder);
    return BostonFishChowder;
  });

}).call(this);
