(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Interpreter/DvdAbstractExpression'], function(DvdAbstractExpression) {
    var DvdTitleActorExpression;
    return DvdTitleActorExpression = (function(_super) {
      __extends(DvdTitleActorExpression, _super);

      function DvdTitleActorExpression(title) {
        this.title = title;
      }

      DvdTitleActorExpression.prototype.interpret = function(ctx) {
        return ctx.getTitlesForActor(this.title).join(', ');
      };

      return DvdTitleActorExpression;

    })(DvdAbstractExpression);
  });

}).call(this);
