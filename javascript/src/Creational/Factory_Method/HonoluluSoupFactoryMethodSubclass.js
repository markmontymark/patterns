(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Factory_Method/SoupFactoryMethod', 'Creational/Factory_Method/HonoluluClamChowder', 'Creational/Factory_Method/HonoluluFishChowder'], function(SoupFactoryMethod, HonoluluClamChowder, HonoluluFishChowder) {
    var HonoluluSoupFactoryMethodSubclass, _ref;
    HonoluluSoupFactoryMethodSubclass = (function(_super) {
      __extends(HonoluluSoupFactoryMethodSubclass, _super);

      function HonoluluSoupFactoryMethodSubclass() {
        _ref = HonoluluSoupFactoryMethodSubclass.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      HonoluluSoupFactoryMethodSubclass.prototype.makeBuffetName = function() {
        return "Honolulu Soup Buffet";
      };

      HonoluluSoupFactoryMethodSubclass.prototype.makeClamChowder = function() {
        return new HonoluluClamChowder();
      };

      HonoluluSoupFactoryMethodSubclass.prototype.makeFishChowder = function() {
        return new HonoluluFishChowder();
      };

      return HonoluluSoupFactoryMethodSubclass;

    })(SoupFactoryMethod);
    return HonoluluSoupFactoryMethodSubclass;
  });

}).call(this);
