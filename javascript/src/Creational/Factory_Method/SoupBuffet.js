(function() {
  define(['Creational/Factory_Method/ChickenSoup', 'Creational/Factory_Method/ClamChowder', 'Creational/Factory_Method/FishChowder', 'Creational/Factory_Method/Minnestrone', 'Creational/Factory_Method/PastaFazul', 'Creational/Factory_Method/TofuSoup', 'Creational/Factory_Method/VegetableSoup'], function(ChickenSoup, ClamChowder, FishChowder, Minnestrone, PastaFazul, TofuSoup, VegetableSoup) {
    var SoupBuffet;
    SoupBuffet = (function() {
      function SoupBuffet() {}

      SoupBuffet.prototype.soupBuffetName = null;

      SoupBuffet.prototype.chickenSoup = null;

      SoupBuffet.prototype.clamChowder = null;

      SoupBuffet.prototype.fishChowder = null;

      SoupBuffet.prototype.minnestrone = null;

      SoupBuffet.prototype.pastaFazul = null;

      SoupBuffet.prototype.tofuSoup = null;

      SoupBuffet.prototype.vegetableSoup = null;

      SoupBuffet.prototype.getSoupBuffetName = function() {
        return this.soupBuffetName;
      };

      SoupBuffet.prototype.setSoupBuffetName = function(soupBuffetNameIn) {
        return this.soupBuffetName = soupBuffetNameIn;
      };

      SoupBuffet.prototype.setChickenSoup = function(chickenSoupIn) {
        return this.chickenSoup = chickenSoupIn;
      };

      SoupBuffet.prototype.setClamChowder = function(clamChowderIn) {
        return this.clamChowder = clamChowderIn;
      };

      SoupBuffet.prototype.setFishChowder = function(fishChowderIn) {
        return this.fishChowder = fishChowderIn;
      };

      SoupBuffet.prototype.setMinnestrone = function(minnestroneIn) {
        return this.minnestrone = minnestroneIn;
      };

      SoupBuffet.prototype.setPastaFazul = function(pastaFazulIn) {
        return this.pastaFazul = pastaFazulIn;
      };

      SoupBuffet.prototype.setTofuSoup = function(tofuSoupIn) {
        return this.tofuSoup = tofuSoupIn;
      };

      SoupBuffet.prototype.setVegetableSoup = function(vegetableSoupIn) {
        return this.vegetableSoup = vegetableSoupIn;
      };

      SoupBuffet.prototype.getTodaysSoups = function() {
        return [" Today's Soups!  ", " Chicken Soup: ", this.chickenSoup.soupName, " Clam Chowder: ", this.clamChowder.soupName, " Fish Chowder: ", this.fishChowder.soupName, " Minnestrone: ", this.minnestrone.soupName, " Pasta Fazul: ", this.pastaFazul.soupName, " Tofu Soup: ", this.tofuSoup.soupName, " Vegetable Soup: ", this.vegetableSoup.soupName].toString();
      };

      return SoupBuffet;

    })();
    return SoupBuffet;
  });

}).call(this);
