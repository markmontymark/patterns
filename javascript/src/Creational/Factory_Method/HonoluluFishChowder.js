(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Factory_Method/FishChowder'], function(FishChowder) {
    var HonoluluFishChowder;
    HonoluluFishChowder = (function(_super) {
      __extends(HonoluluFishChowder, _super);

      function HonoluluFishChowder() {
        this.soupName = 'OpakapakaFishChowder';
        this.soupIngredients = ['1 Pound Fresh Opakapaka Fish', '1 cup pineapple chunks', '1/2 cup coconut milk', '1/4 cup SPAM', '1/4 cup taro chips'];
      }

      return HonoluluFishChowder;

    })(FishChowder);
    return HonoluluFishChowder;
  });

}).call(this);
