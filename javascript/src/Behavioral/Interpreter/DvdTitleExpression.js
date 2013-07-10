(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Interpreter/DvdAbstractExpression'], function(DvdAbstractExpression) {
    var DvdTitleExpression, _ref;
    return DvdTitleExpression = (function(_super) {
      __extends(DvdTitleExpression, _super);

      function DvdTitleExpression() {
        _ref = DvdTitleExpression.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      DvdTitleExpression.prototype.interpret = function(ctx) {
        return ctx.getAllTitles().join(', ');
      };

      return DvdTitleExpression;

    })(DvdAbstractExpression);
  });

}).call(this);
