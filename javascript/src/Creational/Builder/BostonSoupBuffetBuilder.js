(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Builder/SoupBuffetBuilder', 'Creational/Builder/BostonClamChowder', 'Creational/Builder/BostonFishChowder'], function(SoupBuffetBuilder, BostonClamChowder, BostonFishChowder) {
    var BostonSoupBuffetBuilder;
    BostonSoupBuffetBuilder = (function(_super) {
      __extends(BostonSoupBuffetBuilder, _super);

      function BostonSoupBuffetBuilder() {}

      BostonSoupBuffetBuilder.prototype.buildClamChowder = function() {
        return this.soupBuffet.clamChowder = new BostonClamChowder();
      };

      BostonSoupBuffetBuilder.prototype.buildFishChowder = function() {
        return this.soupBuffet.fishChowder = new BostonFishChowder();
      };

      BostonSoupBuffetBuilder.prototype.setSoupBuffetName = function() {
        return this.soupBuffet.soupBuffetName = "Boston Soup Buffet";
      };

      return BostonSoupBuffetBuilder;

    })(SoupBuffetBuilder);
    return BostonSoupBuffetBuilder;
  });

}).call(this);
