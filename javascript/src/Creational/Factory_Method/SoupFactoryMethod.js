(function() {
  define(['Creational/Factory_Method/SoupBuffet', 'Creational/Factory_Method/ChickenSoup', 'Creational/Factory_Method/ClamChowder', 'Creational/Factory_Method/FishChowder', 'Creational/Factory_Method/Minnestrone', 'Creational/Factory_Method/PastaFazul', 'Creational/Factory_Method/TofuSoup', 'Creational/Factory_Method/VegetableSoup'], function(SoupBuffet, ChickenSoup, ClamChowder, FishChowder, Minnestrone, PastaFazul, TofuSoup, VegetableSoup) {
    var SoupFactoryMethod;
    SoupFactoryMethod = (function() {
      function SoupFactoryMethod() {}

      SoupFactoryMethod.prototype.makeSoupBuffet = function() {
        return new SoupBuffet();
      };

      SoupFactoryMethod.prototype.makeChickenSoup = function() {
        return new ChickenSoup();
      };

      SoupFactoryMethod.prototype.makeClamChowder = function() {
        return new ClamChowder();
      };

      SoupFactoryMethod.prototype.makeFishChowder = function() {
        return new FishChowder();
      };

      SoupFactoryMethod.prototype.makeMinnestrone = function() {
        return new Minnestrone();
      };

      SoupFactoryMethod.prototype.makePastaFazul = function() {
        return new PastaFazul();
      };

      SoupFactoryMethod.prototype.makeTofuSoup = function() {
        return new TofuSoup();
      };

      SoupFactoryMethod.prototype.makeVegetableSoup = function() {
        return new VegetableSoup();
      };

      SoupFactoryMethod.prototype.makeBuffetName = function() {
        return "Soup Buffet";
      };

      return SoupFactoryMethod;

    })();
    return SoupFactoryMethod;
  });

}).call(this);
