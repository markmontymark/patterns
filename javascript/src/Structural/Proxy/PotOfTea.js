(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Proxy/PotOfTeaInterface'], function(PotOfTeaInterface) {
    var PotOfTea, _ref;
    PotOfTea = (function(_super) {
      __extends(PotOfTea, _super);

      function PotOfTea() {
        _ref = PotOfTea.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      PotOfTea.prototype.pourTea = function() {
        return 'Pouring tea';
      };

      return PotOfTea;

    })(PotOfTeaInterface);
    return PotOfTea;
  });

}).call(this);
