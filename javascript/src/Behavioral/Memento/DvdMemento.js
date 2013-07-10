(function() {
  define([], function() {
    var DvdMemento;
    return DvdMemento = (function() {
      function DvdMemento(cache) {
        this.cache = cache != null ? cache : {};
      }

      DvdMemento.prototype.setState = function(toSave) {
        return this.cache = JSON.parse(JSON.stringify(toSave));
      };

      DvdMemento.prototype.getState = function() {
        return this.cache;
      };

      return DvdMemento;

    })();
  });

}).call(this);
