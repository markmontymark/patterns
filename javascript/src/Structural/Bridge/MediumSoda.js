(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Bridge/Soda'], function(Soda) {
    var MediumSoda;
    MediumSoda = (function(_super) {
      __extends(MediumSoda, _super);

      function MediumSoda() {
        this.setSodaImp();
      }

      MediumSoda.prototype.pourSoda = function() {
        var i, retval, sodaImp, _i;
        sodaImp = this.getSodaImp();
        retval = [];
        for (i = _i = 1; _i <= 2; i = ++_i) {
          retval.push('...glug...');
          retval.push(sodaImp.pourSodaImp());
        }
        return retval.toString();
      };

      return MediumSoda;

    })(Soda);
    return MediumSoda;
  });

}).call(this);
