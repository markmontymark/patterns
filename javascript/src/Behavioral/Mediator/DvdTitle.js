(function() {
  define([], function() {
    var DvdTitle;
    return DvdTitle = (function() {
      function DvdTitle() {}

      DvdTitle.prototype.title = null;

      DvdTitle.prototype.setTitle = function(titleIn) {
        return this.title = titleIn;
      };

      DvdTitle.prototype.getTitle = function() {
        return this.title;
      };

      return DvdTitle;

    })();
  });

}).call(this);
