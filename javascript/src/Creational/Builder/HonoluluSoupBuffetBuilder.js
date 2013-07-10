(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Builder/SoupBuffetBuilder', 'Creational/Builder/HonoluluClamChowder', 'Creational/Builder/HonoluluFishChowder'], function(SoupBuffetBuilder, HonoluluClamChowder, HonoluluFishChowder) {
    var HonoluluSoupBuffetBuilder;
    HonoluluSoupBuffetBuilder = (function(_super) {
      __extends(HonoluluSoupBuffetBuilder, _super);

      function HonoluluSoupBuffetBuilder() {}

      HonoluluSoupBuffetBuilder.prototype.buildClamChowder = function() {
        return this.soupBuffet.clamChowder = new HonoluluClamChowder();
      };

      HonoluluSoupBuffetBuilder.prototype.buildFishChowder = function() {
        return this.soupBuffet.fishChowder = new HonoluluFishChowder();
      };

      HonoluluSoupBuffetBuilder.prototype.setSoupBuffetName = function() {
        return this.soupBuffet.soupBuffetName = "Honolulu Soup Buffet";
      };

      return HonoluluSoupBuffetBuilder;

    })(SoupBuffetBuilder);
    return HonoluluSoupBuffetBuilder;
  });

}).call(this);
