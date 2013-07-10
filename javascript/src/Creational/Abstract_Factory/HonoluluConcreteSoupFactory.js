(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Abstract_Factory/AbstractSoupFactory', 'Creational/Abstract_Factory/HonoluluClamChowder', 'Creational/Abstract_Factory/HonoluluFishChowder'], function(AbstractSoupFactory, HonoluluClamChowder, HonoluluFishChowder) {
    var HonoluluConcreteSoupFactory;
    HonoluluConcreteSoupFactory = (function(_super) {
      __extends(HonoluluConcreteSoupFactory, _super);

      function HonoluluConcreteSoupFactory() {
        this.factoryLocation = 'Honolulu';
      }

      HonoluluConcreteSoupFactory.prototype.makeClamChowder = function() {
        return new HonoluluClamChowder();
      };

      HonoluluConcreteSoupFactory.prototype.makeFishChowder = function() {
        return new HonoluluFishChowder();
      };

      return HonoluluConcreteSoupFactory;

    })(AbstractSoupFactory);
    return HonoluluConcreteSoupFactory;
  });

}).call(this);
