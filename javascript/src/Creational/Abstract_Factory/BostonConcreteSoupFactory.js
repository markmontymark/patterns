(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Abstract_Factory/AbstractSoupFactory', 'Creational/Abstract_Factory/BostonClamChowder', 'Creational/Abstract_Factory/BostonFishChowder'], function(AbstractSoupFactory, BostonClamChowder, BostonFishChowder) {
    var BostonConcreteSoupFactory;
    BostonConcreteSoupFactory = (function(_super) {
      __extends(BostonConcreteSoupFactory, _super);

      function BostonConcreteSoupFactory() {
        this.factoryLocation = "Boston";
      }

      BostonConcreteSoupFactory.prototype.makeClamChowder = function() {
        return new BostonClamChowder();
      };

      BostonConcreteSoupFactory.prototype.makeFishChowder = function() {
        return new BostonFishChowder();
      };

      return BostonConcreteSoupFactory;

    })(AbstractSoupFactory);
    return BostonConcreteSoupFactory;
  });

}).call(this);
