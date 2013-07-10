(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Interpreter/DvdAbstractExpression'], function(DvdAbstractExpression) {
    var DvdActorExpression, _ref;
    return DvdActorExpression = (function(_super) {
      __extends(DvdActorExpression, _super);

      function DvdActorExpression() {
        _ref = DvdActorExpression.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      DvdActorExpression.prototype.interpret = function(ctx) {
        return ctx.getAllActors().join(', ');
      };

      return DvdActorExpression;

    })(DvdAbstractExpression);
  });

}).call(this);
