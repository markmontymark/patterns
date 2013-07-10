(function() {
  define([], function() {
    var TitleInfo;
    return TitleInfo = (function() {
      function TitleInfo() {}

      TitleInfo.prototype.titleName = null;

      TitleInfo.prototype.ProcessTitleInfo = function() {
        var titleInfo;
        titleInfo = [];
        titleInfo.push(this.getTitleBlurb());
        titleInfo.push(this.getDvdEncodingRegionInfo());
        return titleInfo.toString();
      };

      TitleInfo.prototype.setTitleName = function(titleNameIn) {
        return this.titleName = titleNameIn;
      };

      TitleInfo.prototype.getTitleName = function() {
        return this.titleName;
      };

      TitleInfo.prototype.getTitleBlurb = function() {
        throw "Unimplemented method TitleInfo.getTitleBlurb";
      };

      TitleInfo.prototype.getDvdEncodingRegionInfo = function() {
        return ' ';
      };

      return TitleInfo;

    })();
  });

}).call(this);
