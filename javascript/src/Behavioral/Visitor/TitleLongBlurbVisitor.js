(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Visitor/TitleBlurbVisitor', 'Behavioral/Visitor/BookInfo', 'Behavioral/Visitor/DvdInfo', 'Behavioral/Visitor/GameInfo'], function(TitleBlurbVisitor, BookInfo, DvdInfo, GameInfo) {
    var TitleLongBlurbVisitor, _ref;
    return TitleLongBlurbVisitor = (function(_super) {
      __extends(TitleLongBlurbVisitor, _super);

      function TitleLongBlurbVisitor() {
        _ref = TitleLongBlurbVisitor.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      TitleLongBlurbVisitor.prototype.visit = function(info) {
        switch (false) {
          case !(info instanceof BookInfo):
            return this.setTitleBlurb("LB-Book: " + info.titleName + ", Author: " + info.author);
          case !(info instanceof DvdInfo):
            return this.setTitleBlurb("LB-DVD: " + info.titleName + ", starring " + info.star + ", encoding region: " + info.region);
          case !(info instanceof GameInfo):
            return this.setTitleBlurb("LB-Game: " + info.titleName);
        }
      };

      return TitleLongBlurbVisitor;

    })(TitleBlurbVisitor);
  });

}).call(this);
