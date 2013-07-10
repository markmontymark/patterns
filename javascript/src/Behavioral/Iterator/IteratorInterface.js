(function() {
  define([], function() {
    var IteratorInterface;
    return IteratorInterface = (function() {
      function IteratorInterface() {}

      IteratorInterface.prototype.first = function() {
        throw 'Unimplemented method, IteratorInterface.first';
      };

      IteratorInterface.prototype.next = function() {
        throw 'Unimplemented method, IteratorInterface.next';
      };

      IteratorInterface.prototype.isDone = function() {
        throw 'Unimplemented method, IteratorInterface.isDone';
      };

      IteratorInterface.prototype.currentItem = function() {
        throw 'Unimplemented method, IteratorInterface.currentItem';
      };

      return IteratorInterface;

    })();
  });

}).call(this);
