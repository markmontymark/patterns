(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Visitor/TitleBlurbVisitor', 'Behavioral/Visitor/BookInfo', 'Behavioral/Visitor/DvdInfo', 'Behavioral/Visitor/GameInfo'], function(TitleBlurbVisitor, BookInfo, DvdInfo, GameInfo) {
    var TitleShortBlurbVisitor, _ref;
    return TitleShortBlurbVisitor = (function(_super) {
      __extends(TitleShortBlurbVisitor, _super);

      function TitleShortBlurbVisitor() {
        _ref = TitleShortBlurbVisitor.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      TitleShortBlurbVisitor.prototype.visit = function(info) {
        switch (false) {
          case !(info instanceof BookInfo):
            return this.setTitleBlurb("SB-Book: " + info.titleName);
          case !(info instanceof DvdInfo):
            return this.setTitleBlurb("SB-DVD: " + info.titleName);
          case !(info instanceof GameInfo):
            return this.setTitleBlurb("SB-Game: " + info.titleName);
        }
      };

      return TitleShortBlurbVisitor;

    })(TitleBlurbVisitor);
  });

}).call(this);
