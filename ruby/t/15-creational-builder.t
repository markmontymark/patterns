
require "tapper"
require "Creational/Builder"

extend Tapper


def createSoupBuffet( builder)
	builder.buildSoupBuffet();
	builder.setSoupBuffetName();
	builder.buildChickenSoup();
	builder.buildClamChowder();
	builder.buildFishChowder();    
	builder.buildMinnestrone();
	builder.buildPastaFazul();
	builder.buildTofuSoup();
	builder.buildVegetableSoup();
	builder.getSoupBuffet();
end  

       
bostonSoupBuffet = createSoupBuffet( BostonSoupBuffetBuilder.new );
test "Testing Boston soup buffet" do
	assert_equal "At the #{bostonSoupBuffet.getSoupBuffetName()} #{bostonSoupBuffet.getTodaysSoups()}", "At the Boston Soup Buffet  Today's Soups!  Chicken Soup: ChickenSoup, Clam Chowder: QuahogChowder, Fish Chowder: ScrodFishChowder, Minnestrone: Minnestrone, Pasta Fazul: Pasta Fazul, Tofu Soup: Tofu Soup, Vegetable Soup: Vegetable Soup"
end

honoluluSoupBuffet = createSoupBuffet( HonoluluSoupBuffetBuilder.new);

test "Testing Honolulu soup buffet" do
	assert_equal "At the #{honoluluSoupBuffet.getSoupBuffetName()} #{honoluluSoupBuffet.getTodaysSoups()}", "At the Honolulu Soup Buffet  Today's Soups!  Chicken Soup: ChickenSoup, Clam Chowder: PacificClamChowder, Fish Chowder: OpakapakaFishChowder, Minnestrone: Minnestrone, Pasta Fazul: Pasta Fazul, Tofu Soup: Tofu Soup, Vegetable Soup: Vegetable Soup"
end


done;
