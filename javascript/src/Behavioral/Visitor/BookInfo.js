(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Visitor/AbstractTitleInfo'], function(AbstractTitleInfo) {
    var BookInfo;
    return BookInfo = (function(_super) {
      __extends(BookInfo, _super);

      BookInfo.prototype.author = null;

      function BookInfo(titleName, author) {
        this.titleName = titleName;
        this.author = author;
      }

      BookInfo.prototype.accept = function(titleBlurbVisitor) {
        return titleBlurbVisitor.visit(this);
      };

      return BookInfo;

    })(AbstractTitleInfo);
  });

}).call(this);
