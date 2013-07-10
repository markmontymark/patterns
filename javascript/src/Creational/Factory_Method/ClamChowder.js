(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Factory_Method/Soup'], function(Soup) {
    var ClamChowder;
    ClamChowder = (function(_super) {
      __extends(ClamChowder, _super);

      function ClamChowder() {
        this.soupName = 'ClamChowder';
        this.soupIngredients = ['1 Pound Fresh Clams', '1 cup fruit or vegetables', '1/2 cup milk', '1/4 cup butter', '1/4 cup chips'];
      }

      return ClamChowder;

    })(Soup);
    return ClamChowder;
  });

}).call(this);
