(function() {
  define([], function() {
    var AbstractSoupFactory;
    AbstractSoupFactory = (function() {
      function AbstractSoupFactory(factoryLocation) {
        this.factoryLocation = factoryLocation;
        throw "Can't instantiate an abstract class, AbstractSoupFactory";
      }

      AbstractSoupFactory.prototype.getFactoryLocation = function() {
        return this.factoryLocation;
      };

      AbstractSoupFactory.prototype.makeChickenSoup = function() {
        return new ChickenSoup();
      };

      AbstractSoupFactory.prototype.makeClamChowder = function() {
        return new ClamChowder();
      };

      AbstractSoupFactory.prototype.makeFishChowder = function() {
        return new FishChowder();
      };

      AbstractSoupFactory.prototype.makeMinnestrone = function() {
        return new Minnestrone();
      };

      AbstractSoupFactory.prototype.makePastaFazul = function() {
        return new PastaFazul();
      };

      AbstractSoupFactory.prototype.makeTofuSoup = function() {
        return new TofuSoup();
      };

      AbstractSoupFactory.prototype.makeVegetableSoup = function() {
        return new VegetableSoup();
      };

      return AbstractSoupFactory;

    })();
    return AbstractSoupFactory;
  });

}).call(this);
