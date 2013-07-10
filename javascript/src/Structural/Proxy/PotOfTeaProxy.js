(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Proxy/PotOfTeaInterface', 'Structural/Proxy/PotOfTea'], function(PotOfTeaInterface, PotOfTea) {
    var PotOfTeaProxy;
    PotOfTeaProxy = (function(_super) {
      __extends(PotOfTeaProxy, _super);

      PotOfTeaProxy.prototype.potOfTea = null;

      function PotOfTeaProxy() {}

      PotOfTeaProxy.prototype.pourTea = function() {
        this.potOfTea = new PotOfTea();
        return this.potOfTea.pourTea();
      };

      return PotOfTeaProxy;

    })(PotOfTeaInterface);
    return PotOfTeaProxy;
  });

}).call(this);
