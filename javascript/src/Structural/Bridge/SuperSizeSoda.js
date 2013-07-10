(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Bridge/Soda'], function(Soda) {
    var SuperSizeSoda;
    SuperSizeSoda = (function(_super) {
      __extends(SuperSizeSoda, _super);

      function SuperSizeSoda() {
        this.setSodaImp();
      }

      SuperSizeSoda.prototype.pourSoda = function() {
        var i, retval, sodaImp, _i;
        sodaImp = this.getSodaImp();
        retval = [];
        for (i = _i = 1; _i <= 5; i = ++_i) {
          retval.push('...glug...');
          retval.push(sodaImp.pourSodaImp());
          retval.push(' ');
        }
        return retval.toString();
      };

      return SuperSizeSoda;

    })(Soda);
    return SuperSizeSoda;
  });

}).call(this);
