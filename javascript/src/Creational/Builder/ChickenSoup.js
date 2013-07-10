(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Builder/Soup'], function(Soup) {
    var ChickenSoup;
    ChickenSoup = (function(_super) {
      __extends(ChickenSoup, _super);

      function ChickenSoup() {
        this.soupName = 'ChickenSoup';
        this.soupIngredients = ['1 Pound diced chicken', '1/2 cup rice', '1 cup bullion', '1/16 cup butter', '1/4 cup diced carrots'];
      }

      return ChickenSoup;

    })(Soup);
    return ChickenSoup;
  });

}).call(this);
