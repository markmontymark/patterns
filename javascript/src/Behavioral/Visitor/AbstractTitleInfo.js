(function() {
  define([], function() {
    var AbstractTitleInfo;
    return AbstractTitleInfo = (function() {
      function AbstractTitleInfo() {}

      AbstractTitleInfo.prototype.titleName = null;

      AbstractTitleInfo.prototype.setTitleName = function(titleNameIn) {
        return this.titleName = titleNameIn;
      };

      AbstractTitleInfo.prototype.getTitleName = function() {
        return this.titleName;
      };

      AbstractTitleInfo.prototype.accept = function(titleBlurbVisitor) {
        throw "Unimplemented method, AbstractTitleInfo.accept";
      };

      return AbstractTitleInfo;

    })();
  });

}).call(this);
