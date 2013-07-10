(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Abstract_Factory/Soup'], function(Soup) {
    var Minnestrone;
    Minnestrone = (function(_super) {
      __extends(Minnestrone, _super);

      function Minnestrone() {
        this.soupName = 'Minnestrone';
        this.soupIngredients = ['1 Pound tomatos', '1/2 cup pasta', '1 cup tomato juice'];
      }

      return Minnestrone;

    })(Soup);
    return Minnestrone;
  });

}).call(this);
