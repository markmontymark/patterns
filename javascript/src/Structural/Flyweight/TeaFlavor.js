(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Flyweight/TeaOrder'], function(TeaOrder) {
    var TeaFlavor;
    TeaFlavor = (function(_super) {
      __extends(TeaFlavor, _super);

      function TeaFlavor(teaFlavor) {
        this.teaFlavor = teaFlavor;
      }

      TeaFlavor.prototype.getFlavor = function() {
        return this.teaFlavor;
      };

      TeaFlavor.prototype.serveTea = function(teaOrderContext) {
        return "Serving tea flavor " + this.teaFlavor + " to table number " + (teaOrderContext.getTable());
      };

      return TeaFlavor;

    })(TeaOrder);
    return TeaFlavor;
  });

}).call(this);
