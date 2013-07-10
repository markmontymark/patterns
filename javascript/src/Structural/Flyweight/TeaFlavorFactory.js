(function() {
  define(['Structural/Flyweight/TeaFlavor'], function(TeaFlavor) {
    var TeaFlavorFactory;
    TeaFlavorFactory = (function() {
      function TeaFlavorFactory() {}

      TeaFlavorFactory.prototype.flavors = [];

      TeaFlavorFactory.prototype.teasMade = 0;

      TeaFlavorFactory.prototype.getTeaFlavor = function(flavorToGet) {
        var flavor, _i, _len, _ref;
        if (this.teasMade > 0) {
          _ref = this.flavors;
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            flavor = _ref[_i];
            if (flavorToGet === flavor.getFlavor()) {
              return flavor;
            }
          }
        }
        this.flavors[this.teasMade] = new TeaFlavor(flavorToGet);
        return this.flavors[this.teasMade++];
      };

      TeaFlavorFactory.prototype.getTotalTeaFlavorsMade = function() {
        return this.teasMade;
      };

      return TeaFlavorFactory;

    })();
    return TeaFlavorFactory;
  });

}).call(this);
