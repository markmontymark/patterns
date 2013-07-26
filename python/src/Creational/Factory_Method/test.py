
#//TestSoupFactoryMethod.java - testing the factory method

define ['Creational/Factory_Method/SoupFactoryMethod',
'Creational/Factory_Method/BostonSoupFactoryMethodSubclass',
'Creational/Factory_Method/HonoluluSoupFactoryMethodSubclass'
], (
SoupFactoryMethod,
BostonSoupFactoryMethodSubclass,
HonoluluSoupFactoryMethodSubclass
) ->

	describe 'Test Factory Method', ->
		it 'Test plain soup factory', ->
			sfm = new SoupFactoryMethod()
			sb = sfm.makeSoupBuffet()
			sb.setSoupBuffetName sfm.makeBuffetName()
			sb.setChickenSoup sfm.makeChickenSoup()
			sb.setClamChowder sfm.makeClamChowder()
			sb.setFishChowder sfm.makeFishChowder()
			sb.setMinnestrone sfm.makeMinnestrone()
			sb.setPastaFazul sfm.makePastaFazul()
			sb.setTofuSoup sfm.makeTofuSoup()
			sb.setVegetableSoup sfm.makeVegetableSoup()
			self.assertEqual("At the #{sb.getSoupBuffetName()} #{sb.getTodaysSoups()}", "At the Soup Buffet  Today's Soups!  , Chicken Soup: ,ChickenSoup, Clam Chowder: ,ClamChowder, Fish Chowder: ,FishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup")

		it 'Test boston soup factory', ->
			bsfm = new BostonSoupFactoryMethodSubclass()
			bsb = bsfm.makeSoupBuffet()
			bsb.setSoupBuffetName bsfm.makeBuffetName()
			bsb.setChickenSoup bsfm.makeChickenSoup()
			bsb.setClamChowder bsfm.makeClamChowder()
			bsb.setFishChowder bsfm.makeFishChowder()
			bsb.setMinnestrone bsfm.makeMinnestrone()
			bsb.setPastaFazul bsfm.makePastaFazul()
			bsb.setTofuSoup bsfm.makeTofuSoup()
			bsb.setVegetableSoup bsfm.makeVegetableSoup()
			self.assertEqual("At the  #{bsb.getSoupBuffetName()} #{bsb.getTodaysSoups()}" , "At the  Boston Soup Buffet  Today's Soups!  , Chicken Soup: ,ChickenSoup, Clam Chowder: ,QuahogChowder, Fish Chowder: ,ScrodFishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup")

		it 'Test honolulu soup factory', ->
			hsfm = new HonoluluSoupFactoryMethodSubclass()
			hsb = hsfm.makeSoupBuffet()
			hsb.setSoupBuffetName hsfm.makeBuffetName()
			hsb.setChickenSoup hsfm.makeChickenSoup()
			hsb.setClamChowder hsfm.makeClamChowder()
			hsb.setFishChowder hsfm.makeFishChowder()
			hsb.setMinnestrone hsfm.makeMinnestrone()
			hsb.setPastaFazul hsfm.makePastaFazul()
			hsb.setTofuSoup hsfm.makeTofuSoup()
			hsb.setVegetableSoup hsfm.makeVegetableSoup()
			self.assertEqual("At the  #{hsb.getSoupBuffetName()} #{hsb.getTodaysSoups()}", "At the  Honolulu Soup Buffet  Today's Soups!  , Chicken Soup: ,ChickenSoup, Clam Chowder: ,PacificClamChowder, Fish Chowder: ,OpakapakaFishChowder, Minnestrone: ,Minnestrone, Pasta Fazul: ,Pasta Fazul, Tofu Soup: ,Tofu Soup, Vegetable Soup: ,Vegetable Soup")
