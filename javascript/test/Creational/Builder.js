(function() {
  define(['Creational/Builder/BostonSoupBuffetBuilder', 'Creational/Builder/HonoluluSoupBuffetBuilder'], function(BostonSoupBuffetBuilder, HonoluluSoupBuffetBuilder) {
    'use strict';
    var CreateSoupBuffet;
    CreateSoupBuffet = function(soupBuffetBuilder) {
      soupBuffetBuilder.buildSoupBuffet();
      soupBuffetBuilder.setSoupBuffetName();
      soupBuffetBuilder.buildChickenSoup();
      soupBuffetBuilder.buildClamChowder();
      soupBuffetBuilder.buildFishChowder();
      soupBuffetBuilder.buildMinnestrone();
      soupBuffetBuilder.buildPastaFazul();
      soupBuffetBuilder.buildTofuSoup();
      soupBuffetBuilder.buildVegetableSoup();
      return soupBuffetBuilder.getSoupBuffet();
    };
    return describe('Test Builder Pattern', function() {
      var bostonsoupBuffet, honoluluSoupBuffet;
      it('builder files should be loaded', function() {
        expect(BostonSoupBuffetBuilder).toBeDefined();
        return expect(HonoluluSoupBuffetBuilder).toBeDefined();
      });
      bostonsoupBuffet = CreateSoupBuffet(new BostonSoupBuffetBuilder());
      it("Testing Boston soup buffett", function() {
        return expect("At the " + (bostonsoupBuffet.getSoupBuffetName()) + " today's soup is " + (bostonsoupBuffet.getTodaysSoups())).toEqual("At the Boston Soup Buffet today's soup is  Today's Soups!  , Chicken Soup: ,ChickenSoup, Clam Chowder: ,QuahogChowder, Fish Chowder: ,ScrodFishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup");
      });
      honoluluSoupBuffet = CreateSoupBuffet(new HonoluluSoupBuffetBuilder());
      return it('Testing Honolulu soup buffett', function() {
        return expect("At the " + (honoluluSoupBuffet.getSoupBuffetName()) + " today's soup is " + (honoluluSoupBuffet.getTodaysSoups())).toEqual("At the Honolulu Soup Buffet today's soup is  Today's Soups!  , Chicken Soup: ,ChickenSoup, Clam Chowder: ,PacificClamChowder, Fish Chowder: ,OpakapakaFishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup");
      });
    });
  });

}).call(this);
