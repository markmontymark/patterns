(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Interpreter/DvdAbstractExpression'], function(DvdAbstractExpression) {
    var DvdActorTitleExpression;
    return DvdActorTitleExpression = (function(_super) {
      __extends(DvdActorTitleExpression, _super);

      function DvdActorTitleExpression(title) {
        this.title = title;
      }

      DvdActorTitleExpression.prototype.interpret = function(ctx) {
        return ctx.getActorsForTitle(this.title).join(', ');
      };

      return DvdActorTitleExpression;

    })(DvdAbstractExpression);
  });

}).call(this);
