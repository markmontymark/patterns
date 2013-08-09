require "tapper"
require "Creational/Factory_Method"

extend Tapper


soupFactoryMethod = SoupFactoryMethod.new;
soupBuffet = soupFactoryMethod.makeSoupBuffet();
soupBuffet.soupBuffetName = soupFactoryMethod.makeBuffetName();
soupBuffet.chickenSoup =  soupFactoryMethod.makeChickenSoup();
soupBuffet.clamChowder =  soupFactoryMethod.makeClamChowder(); 
soupBuffet.fishChowder =  soupFactoryMethod.makeFishChowder();
soupBuffet.minnestrone =  soupFactoryMethod.makeMinnestrone();
soupBuffet.pastaFazul =  soupFactoryMethod.makePastaFazul(); 
soupBuffet.tofuSoup =  soupFactoryMethod.makeTofuSoup();
soupBuffet.vegetableSoup =  soupFactoryMethod.makeVegetableSoup(); 
test "Testing plain soup buffet" do
	assert_equal "At the #{soupBuffet.soupBuffetName} #{soupBuffet.getTodaysSoups()}", 
		"At the Soup Buffet  Today's Soups!  Chicken Soup: ChickenSoup, Clam Chowder: ClamChowder, Fish Chowder: FishChowder, Minnestrone: Minnestrone, Pasta Fazul: Pasta Fazul, Tofu Soup: Tofu Soup, Vegetable Soup: Vegetable Soup"
end

bostonSoupFactoryMethod = BostonSoupFactoryMethodSubclass.new;
bostonSoupBuffet = bostonSoupFactoryMethod.makeSoupBuffet();
bostonSoupBuffet.soupBuffetName =  bostonSoupFactoryMethod.makeBuffetName();
bostonSoupBuffet.chickenSoup =  bostonSoupFactoryMethod.makeChickenSoup();
bostonSoupBuffet.clamChowder =  bostonSoupFactoryMethod.makeClamChowder();
bostonSoupBuffet.fishChowder =  bostonSoupFactoryMethod.makeFishChowder();
bostonSoupBuffet.minnestrone =  bostonSoupFactoryMethod.makeMinnestrone();
bostonSoupBuffet.pastaFazul =  bostonSoupFactoryMethod.makePastaFazul();
bostonSoupBuffet.tofuSoup =  bostonSoupFactoryMethod.makeTofuSoup();
bostonSoupBuffet.vegetableSoup =  bostonSoupFactoryMethod.makeVegetableSoup(); 
test "Testing Boston soup buffet" do
	assert_equal "At the #{bostonSoupBuffet.soupBuffetName} #{bostonSoupBuffet.getTodaysSoups()}",
		"At the Boston Soup Buffet  Today's Soups!  Chicken Soup: ChickenSoup, Clam Chowder: QuahogChowder, Fish Chowder: ScrodFishChowder, Minnestrone: Minnestrone, Pasta Fazul: Pasta Fazul, Tofu Soup: Tofu Soup, Vegetable Soup: Vegetable Soup"
end

honoluluSoupFactoryMethod = HonoluluSoupFactoryMethodSubclass.new;
honoluluSoupBuffet = honoluluSoupFactoryMethod.makeSoupBuffet();
honoluluSoupBuffet.soupBuffetName =  honoluluSoupFactoryMethod.makeBuffetName();
honoluluSoupBuffet.chickenSoup =  honoluluSoupFactoryMethod.makeChickenSoup();
honoluluSoupBuffet.clamChowder =  honoluluSoupFactoryMethod.makeClamChowder(); 
honoluluSoupBuffet.fishChowder =  honoluluSoupFactoryMethod.makeFishChowder();
honoluluSoupBuffet.minnestrone =  honoluluSoupFactoryMethod.makeMinnestrone();
honoluluSoupBuffet.pastaFazul  = honoluluSoupFactoryMethod.makePastaFazul(); 
honoluluSoupBuffet.tofuSoup  = honoluluSoupFactoryMethod.makeTofuSoup();
honoluluSoupBuffet.vegetableSoup =  honoluluSoupFactoryMethod.makeVegetableSoup(); 
test "Testing Honolulu soup buffet" do
	assert_equal "At the #{honoluluSoupBuffet.soupBuffetName} #{honoluluSoupBuffet.getTodaysSoups()}",
		"At the Honolulu Soup Buffet  Today's Soups!  Chicken Soup: ChickenSoup, Clam Chowder: PacificClamChowder, Fish Chowder: OpakapakaFishChowder, Minnestrone: Minnestrone, Pasta Fazul: Pasta Fazul, Tofu Soup: Tofu Soup, Vegetable Soup: Vegetable Soup"
end

done
