(function() {
  define([], function() {
    var TitleBlurbVisitor;
    return TitleBlurbVisitor = (function() {
      function TitleBlurbVisitor() {}

      TitleBlurbVisitor.prototype.titleBlurb = null;

      TitleBlurbVisitor.prototype.setTitleBlurb = function(blurbIn) {
        return this.titleBlurb = blurbIn;
      };

      TitleBlurbVisitor.prototype.getTitleBlurb = function() {
        return this.titleBlurb;
      };

      TitleBlurbVisitor.prototype.visit = function(info) {
        throw "Unimplemented method TitleBlurbVisitor.visit";
      };

      return TitleBlurbVisitor;

    })();
  });

}).call(this);
