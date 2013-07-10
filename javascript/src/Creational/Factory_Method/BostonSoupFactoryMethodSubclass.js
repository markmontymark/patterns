(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Factory_Method/SoupFactoryMethod', 'Creational/Factory_Method/BostonClamChowder', 'Creational/Factory_Method/BostonFishChowder'], function(SoupFactoryMethod, BostonClamChowder, BostonFishChowder) {
    var BostonSoupFactoryMethodSubclass, _ref;
    BostonSoupFactoryMethodSubclass = (function(_super) {
      __extends(BostonSoupFactoryMethodSubclass, _super);

      function BostonSoupFactoryMethodSubclass() {
        _ref = BostonSoupFactoryMethodSubclass.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      BostonSoupFactoryMethodSubclass.prototype.makeBuffetName = function() {
        return "Boston Soup Buffet";
      };

      BostonSoupFactoryMethodSubclass.prototype.makeClamChowder = function() {
        return new BostonClamChowder();
      };

      BostonSoupFactoryMethodSubclass.prototype.makeFishChowder = function() {
        return new BostonFishChowder();
      };

      return BostonSoupFactoryMethodSubclass;

    })(SoupFactoryMethod);
    return BostonSoupFactoryMethodSubclass;
  });

}).call(this);
