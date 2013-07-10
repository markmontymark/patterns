(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Mediator/DvdTitle'], function(DvdTitle) {
    var DvdLowercaseTitle;
    return DvdLowercaseTitle = (function(_super) {
      __extends(DvdLowercaseTitle, _super);

      DvdLowercaseTitle.prototype.LowercaseTitle = null;

      DvdLowercaseTitle.prototype.dvdMediator = null;

      function DvdLowercaseTitle(title, dvdMediator) {
        this.setTitle(title instanceof DvdTitle ? title.getTitle() : title);
        this.resetTitle();
        this.dvdMediator = dvdMediator;
        this.dvdMediator.setLowercase(this);
      }

      DvdLowercaseTitle.prototype.resetTitle = function(title) {
        if (title) {
          this.setTitle(title);
        }
        return this.setLowercaseTitle(this.getTitle().toLowerCase());
      };

      DvdLowercaseTitle.prototype.setSuperTitleLowercase = function() {
        this.setTitle(this.getLowercaseTitle());
        return this.dvdMediator.changeTitle(this);
      };

      DvdLowercaseTitle.prototype.getLowercaseTitle = function() {
        return this.LowercaseTitle;
      };

      DvdLowercaseTitle.prototype.setLowercaseTitle = function(aLowercaseTitle) {
        return this.LowercaseTitle = aLowercaseTitle;
      };

      return DvdLowercaseTitle;

    })(DvdTitle);
  });

}).call(this);
