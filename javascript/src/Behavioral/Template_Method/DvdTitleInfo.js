(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Template_Method/TitleInfo'], function(TitleInfo) {
    var DvdTitleInfo;
    return DvdTitleInfo = (function(_super) {
      __extends(DvdTitleInfo, _super);

      function DvdTitleInfo(titleName, star, encodingRegion) {
        this.titleName = titleName;
        this.star = star;
        this.encodingRegion = encodingRegion;
      }

      DvdTitleInfo.prototype.getTitleBlurb = function() {
        return "DVD: " + this.titleName + ", starring " + this.star + " ";
      };

      DvdTitleInfo.prototype.getDvdEncodingRegionInfo = function() {
        return ", encoding region: " + this.encodingRegion;
      };

      return DvdTitleInfo;

    })(TitleInfo);
  });

}).call(this);
