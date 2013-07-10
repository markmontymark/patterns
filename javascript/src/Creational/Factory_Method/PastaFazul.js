(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Factory_Method/Soup'], function(Soup) {
    var PastaFazul;
    PastaFazul = (function(_super) {
      __extends(PastaFazul, _super);

      function PastaFazul() {
        this.soupName = 'Pasta Fazul';
        this.soupIngredients = ['1 Pound tomatos', '1/2 cup pasta', '1/2 cup diced carrots', '1 cup tomato juice'];
      }

      return PastaFazul;

    })(Soup);
    return PastaFazul;
  });

}).call(this);
