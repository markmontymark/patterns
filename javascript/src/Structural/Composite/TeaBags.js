(function() {
  define([], function() {
    var TeaBags;
    TeaBags = (function() {
      TeaBags.prototype.teaBagList = null;

      TeaBags.prototype.parent = null;

      TeaBags.prototype.name = null;

      function TeaBags() {
        throw "Can't instantiate abstract class, TeaBags";
      }

      TeaBags.prototype.countTeaBags = function() {
        throw "Unimplemented method TeaBags.countTeaBags";
      };

      TeaBags.prototype.add = function() {
        throw "Unimplemented method TeaBags.add";
      };

      TeaBags.prototype.remove = function() {
        throw "Unimplemented method TeaBags.remove";
      };

      TeaBags.prototype.createListIterator = function() {
        throw "Unimplemented method TeaBags.createListIterator";
      };

      TeaBags.prototype.setName = function(nameIn) {
        return this.name = nameIn;
      };

      TeaBags.prototype.getName = function() {
        return this.name;
      };

      TeaBags.prototype.setParent = function(parentIn) {
        return this.parent = parentIn;
      };

      TeaBags.prototype.getParent = function() {
        return this.parent;
      };

      return TeaBags;

    })();
    return TeaBags;
  });

}).call(this);
