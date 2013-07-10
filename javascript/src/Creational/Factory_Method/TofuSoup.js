(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Factory_Method/Soup'], function(Soup) {
    var TofuSoup;
    TofuSoup = (function(_super) {
      __extends(TofuSoup, _super);

      function TofuSoup() {
        this.soupName = 'Tofu Soup';
        this.soupIngredients = ['1 Pound tofu', '1 cup carrot juice', '1/4 cup spirolena'];
      }

      return TofuSoup;

    })(Soup);
    return TofuSoup;
  });

}).call(this);
