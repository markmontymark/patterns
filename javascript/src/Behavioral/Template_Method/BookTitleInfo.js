(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Template_Method/TitleInfo'], function(TitleInfo) {
    var BookTitleInfo;
    return BookTitleInfo = (function(_super) {
      __extends(BookTitleInfo, _super);

      BookTitleInfo.prototype.author = null;

      function BookTitleInfo(titleName, author) {
        this.setTitleName(titleName);
        this.setAuthor(author);
      }

      BookTitleInfo.prototype.setAuthor = function(a) {
        return this.author = a;
      };

      BookTitleInfo.prototype.getAuthor = function() {
        return this.author;
      };

      BookTitleInfo.prototype.getTitleBlurb = function() {
        return "Book: " + this.getTitleName() + ", Author: " + this.getAuthor();
      };

      return BookTitleInfo;

    })(TitleInfo);
  });

}).call(this);
