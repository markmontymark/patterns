(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Decorator/Tea'], function(Tea) {
    var ChaiDecorator;
    ChaiDecorator = (function(_super) {
      __extends(ChaiDecorator, _super);

      ChaiDecorator.prototype.chaiIngredients = [];

      function ChaiDecorator(teaToMakeChai) {
        this.teaToMakeChai = teaToMakeChai;
        this.chaiIngredients = ['bay leaf', 'cinnamon stick', 'ginger', 'honey', 'soy milk', 'vanilla bean'];
      }

      ChaiDecorator.prototype.steepTea = function() {
        return this.steepChai();
      };

      ChaiDecorator.prototype.steepChai = function() {
        this.teaToMakeChai.steepTea();
        return this.steepChaiIngredients() + ', tea is steeping with chai';
      };

      ChaiDecorator.prototype.steepChaiIngredients = function() {
        var ingred;
        return ((function() {
          var _i, _len, _ref, _results;
          _ref = this.chaiIngredients;
          _results = [];
          for (_i = 0, _len = _ref.length; _i < _len; _i++) {
            ingred = _ref[_i];
            _results.push(ingred + ' is steeping ');
          }
          return _results;
        }).call(this)).toString();
      };

      return ChaiDecorator;

    })(Tea);
    return ChaiDecorator;
  });

}).call(this);
