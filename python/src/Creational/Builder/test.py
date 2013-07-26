#//TestSoupBuffetBuilder.java - Testing the builder
define [ 'Creational/Builder/BostonSoupBuffetBuilder',
'Creational/Builder/HonoluluSoupBuffetBuilder'
], (
BostonSoupBuffetBuilder,
HonoluluSoupBuffetBuilder
) ->

  'use strict'

  CreateSoupBuffet = (soupBuffetBuilder) ->
    soupBuffetBuilder.buildSoupBuffet()
    soupBuffetBuilder.setSoupBuffetName()
    soupBuffetBuilder.buildChickenSoup()
    soupBuffetBuilder.buildClamChowder()
    soupBuffetBuilder.buildFishChowder()
    soupBuffetBuilder.buildMinnestrone()
    soupBuffetBuilder.buildPastaFazul()
    soupBuffetBuilder.buildTofuSoup()
    soupBuffetBuilder.buildVegetableSoup()
    soupBuffetBuilder.getSoupBuffet()

  describe 'Test Builder Pattern', ->
    it 'builder files should be loaded', ->
      self.assertEqual(BostonSoupBuffetBuilder).toBeDefined()
      self.assertEqual(HonoluluSoupBuffetBuilder).toBeDefined()

    bostonsoupBuffet = CreateSoupBuffet( new BostonSoupBuffetBuilder() )
    it "Testing Boston soup buffett", ->
      self.assertEqual("At the #{bostonsoupBuffet.getSoupBuffetName()} today's soup is #{bostonsoupBuffet.getTodaysSoups()}", "At the Boston Soup Buffet today's soup is  Today's Soups!  , Chicken Soup: ,ChickenSoup, Clam Chowder: ,QuahogChowder, Fish Chowder: ,ScrodFishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup")

    honoluluSoupBuffet = CreateSoupBuffet(new HonoluluSoupBuffetBuilder())
    it 'Testing Honolulu soup buffett', ->
      self.assertEqual("At the #{honoluluSoupBuffet.getSoupBuffetName()} today's soup is #{honoluluSoupBuffet.getTodaysSoups()}", "At the Honolulu Soup Buffet today's soup is  Today's Soups!  , Chicken Soup: ,ChickenSoup, Clam Chowder: ,PacificClamChowder, Fish Chowder: ,OpakapakaFishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup")

