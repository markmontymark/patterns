
require "tapper"
require "Creational/Abstract_Factory"

extend Tapper

def makeSoupOfTheDay( sf)
	r = 3;
	soups = [
		sf.makeChickenSoup(),
		sf.makeClamChowder(),
		sf.makeFishChowder(),
		sf.makeMinnestrone(),
		sf.makePastaFazul(),
		sf.makeTofuSoup(),
		sf.makeVegetableSoup(),
      ];
	soups[r]
end

concreteSoupFactory = BostonConcreteSoupFactory.new();
soupOfTheDay = makeSoupOfTheDay(concreteSoupFactory);

test "Testing boston soup of the day" do
	assert_equal "The Soup of the day #{concreteSoupFactory.getFactoryLocation} is #{soupOfTheDay.getSoupName}", "The Soup of the day Boston is Minnestrone"
end

concreteSoupFactory = HonoluluConcreteSoupFactory.new();
soupOfTheDay = makeSoupOfTheDay(concreteSoupFactory);

test "Testing honolulu soup of the day" do
	assert_equal "The Soup of the day #{concreteSoupFactory.getFactoryLocation} is #{soupOfTheDay.getSoupName}","The Soup of the day Honolulu is Minnestrone"
end

done

