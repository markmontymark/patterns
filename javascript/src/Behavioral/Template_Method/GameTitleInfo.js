(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Template_Method/TitleInfo'], function(TitleInfo) {
    var GameTitleInfo;
    return GameTitleInfo = (function(_super) {
      __extends(GameTitleInfo, _super);

      function GameTitleInfo(titleName) {
        this.setTitleName(titleName);
      }

      GameTitleInfo.prototype.getTitleBlurb = function() {
        return "Game: " + this.getTitleName();
      };

      return GameTitleInfo;

    })(TitleInfo);
  });

}).call(this);
