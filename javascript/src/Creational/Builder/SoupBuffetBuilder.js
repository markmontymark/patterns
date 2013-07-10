(function() {
  define(['Creational/Builder/SoupBuffet', 'Creational/Builder/ChickenSoup', 'Creational/Builder/ClamChowder', 'Creational/Builder/FishChowder', 'Creational/Builder/Minnestrone', 'Creational/Builder/PastaFazul', 'Creational/Builder/TofuSoup', 'Creational/Builder/VegetableSoup'], function(SoupBuffet, ChickenSoup, ClamChowder, FishChowder, Minnestrone, PastaFazul, TofuSoup, VegetableSoup) {
    var SoupBuffetBuilder;
    SoupBuffetBuilder = (function() {
      function SoupBuffetBuilder() {
        throw "Can't instantiate abstract class, SoupBuffetBuilder";
      }

      SoupBuffetBuilder.prototype.setSoupBuffetName = function() {
        throw "Unimplemented method SoupBuffetBuilder.setSoupBuffetName";
      };

      SoupBuffetBuilder.prototype.soupBuffet = null;

      SoupBuffetBuilder.prototype.getSoupBuffet = function() {
        return this.soupBuffet;
      };

      SoupBuffetBuilder.prototype.buildSoupBuffet = function() {
        return this.soupBuffet = new SoupBuffet();
      };

      SoupBuffetBuilder.prototype.buildChickenSoup = function() {
        return this.soupBuffet.chickenSoup = new ChickenSoup();
      };

      SoupBuffetBuilder.prototype.buildClamChowder = function() {
        return this.soupBuffet.clamChowder = new ClamChowder();
      };

      SoupBuffetBuilder.prototype.buildFishChowder = function() {
        return this.soupBuffet.fishChowder = new FishChowder();
      };

      SoupBuffetBuilder.prototype.buildMinnestrone = function() {
        return this.soupBuffet.minnestrone = new Minnestrone();
      };

      SoupBuffetBuilder.prototype.buildPastaFazul = function() {
        return this.soupBuffet.pastaFazul = new PastaFazul();
      };

      SoupBuffetBuilder.prototype.buildTofuSoup = function() {
        return this.soupBuffet.tofuSoup = new TofuSoup();
      };

      SoupBuffetBuilder.prototype.buildVegetableSoup = function() {
        return this.soupBuffet.vegetableSoup = new VegetableSoup();
      };

      return SoupBuffetBuilder;

    })();
    return SoupBuffetBuilder;
  });

}).call(this);
