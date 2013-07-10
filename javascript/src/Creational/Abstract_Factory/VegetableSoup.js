(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Abstract_Factory/Soup'], function(Soup) {
    var VegetableSoup;
    VegetableSoup = (function(_super) {
      __extends(VegetableSoup, _super);

      function VegetableSoup() {
        this.soupName = 'Vegetable Soup';
        this.soupIngredients = ['1 cup bullion', '1/4 cup carrots', '1/4 cup potatoes'];
      }

      return VegetableSoup;

    })(Soup);
    return VegetableSoup;
  });

}).call(this);
