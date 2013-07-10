(function() {
  define([], function() {
    var PrototypeFactory;
    PrototypeFactory = (function() {
      function PrototypeFactory(prototypeSpoon, prototypeFork) {
        this.prototypeSpoon = prototypeSpoon;
        this.prototypeFork = prototypeFork;
      }

      PrototypeFactory.prototype.makeSpoon = function() {
        return this.prototypeSpoon.clone();
      };

      PrototypeFactory.prototype.makeFork = function() {
        return this.prototypeFork.clone();
      };

      return PrototypeFactory;

    })();
    return PrototypeFactory;
  });

}).call(this);
