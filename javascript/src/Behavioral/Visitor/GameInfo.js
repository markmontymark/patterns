(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Visitor/AbstractTitleInfo'], function(AbstractTitleInfo) {
    var GameInfo;
    return GameInfo = (function(_super) {
      __extends(GameInfo, _super);

      function GameInfo(titleName) {
        this.titleName = titleName;
      }

      GameInfo.prototype.accept = function(titleBlurbVisitor) {
        return titleBlurbVisitor.visit(this);
      };

      return GameInfo;

    })(AbstractTitleInfo);
  });

}).call(this);
