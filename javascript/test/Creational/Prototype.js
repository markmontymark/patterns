(function() {
  define(['Creational/Prototype/PrototypeFactory', 'Creational/Prototype/SoupSpoon', 'Creational/Prototype/SaladSpoon', 'Creational/Prototype/SaladFork'], function(PrototypeFactory, SoupSpoon, SaladSpoon, SaladFork) {
    'use strict';
    return describe("Test Creational Prototype", function() {
      it('Creating a Prototype Factory with a SoupSpoon and a SaladFork', function() {
        var fork, prototypeFactory, spoon;
        prototypeFactory = new PrototypeFactory(new SoupSpoon(), new SaladFork());
        spoon = prototypeFactory.makeSpoon();
        fork = prototypeFactory.makeFork();
        expect(spoon).toBeDefined();
        expect(fork).toBeDefined();
        return expect("Spoon: " + (spoon.getSpoonName()) + " , Fork: " + (fork.getForkName())).toEqual("Spoon: Soup Spoon , Fork: Salad Fork");
      });
      return it('Creating a Prototype Factory with a SaladSpoon and a SaladFork', function() {
        var fork, prototypeFactory, spoon;
        prototypeFactory = new PrototypeFactory(new SaladSpoon(), new SaladFork());
        spoon = prototypeFactory.makeSpoon();
        fork = prototypeFactory.makeFork();
        expect(spoon).toBeDefined();
        expect(fork).toBeDefined();
        return expect("Spoon: " + (spoon.getSpoonName()) + " , Fork: " + (fork.getForkName())).toEqual("Spoon: Salad Spoon , Fork: Salad Fork");
      });
    });
  });

}).call(this);
