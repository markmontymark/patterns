(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Visitor/AbstractTitleInfo'], function(AbstractTitleInfo) {
    var DvdInfo;
    return DvdInfo = (function(_super) {
      __extends(DvdInfo, _super);

      DvdInfo.prototype.star = null;

      DvdInfo.prototype.region = null;

      function DvdInfo(titleName, star, region) {
        this.titleName = titleName;
        this.star = star;
        this.region = region;
      }

      DvdInfo.prototype.accept = function(titleBlurbVisitor) {
        return titleBlurbVisitor.visit(this);
      };

      return DvdInfo;

    })(AbstractTitleInfo);
  });

}).call(this);
