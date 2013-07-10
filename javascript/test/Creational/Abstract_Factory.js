(function() {
  define(['Creational/Abstract_Factory/BostonConcreteSoupFactory', 'Creational/Abstract_Factory/HonoluluConcreteSoupFactory'], function(BostonConcreteSoupFactory, HonoluluConcreteSoupFactory) {
    var MakeSoupOfTheDay;
    MakeSoupOfTheDay = function(concreteSoupFactory) {
      var today;
      today = new Date();
      return concreteSoupFactory.makeFishChowder();
    };
    return describe('Abstract Factory Class', function() {
      var bSoupFactory, bsoupOfTheDay, hSoupFactory, hsoupOfTheDay;
      it('loaded BostonConcreteSoupFactory', function() {
        return expect(new BostonConcreteSoupFactory()).toBeDefined();
      });
      it('loaded HonoluluConcreteSoupFactory', function() {
        return expect(new HonoluluConcreteSoupFactory()).toBeDefined();
      });
      bSoupFactory = new BostonConcreteSoupFactory();
      bsoupOfTheDay = MakeSoupOfTheDay(bSoupFactory);
      it('expecting Boston soup of the day to be ScrodFishChowder', function() {
        return expect("The Soup of the day in " + bSoupFactory.factoryLocation + " is " + bsoupOfTheDay.soupName).toEqual("The Soup of the day in Boston is ScrodFishChowder");
      });
      hSoupFactory = new HonoluluConcreteSoupFactory();
      hsoupOfTheDay = MakeSoupOfTheDay(hSoupFactory);
      return it('expecting Boston soup of the day to be ScrodFishChowder', function() {
        return expect("The Soup of the day in " + hSoupFactory.factoryLocation + " is " + hsoupOfTheDay.soupName).toEqual("The Soup of the day in Honolulu is OpakapakaFishChowder");
      });
    });
  });

}).call(this);
