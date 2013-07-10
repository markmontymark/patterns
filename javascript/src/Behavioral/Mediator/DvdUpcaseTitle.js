(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Mediator/DvdTitle'], function(DvdTitle) {
    var DvdUpcaseTitle;
    return DvdUpcaseTitle = (function(_super) {
      __extends(DvdUpcaseTitle, _super);

      DvdUpcaseTitle.prototype.upcaseTitle = null;

      DvdUpcaseTitle.prototype.dvdMediator = null;

      function DvdUpcaseTitle(title, dvdMediator) {
        this.setTitle(title instanceof DvdTitle ? title.getTitle() : title);
        this.resetTitle();
        this.dvdMediator = dvdMediator;
        this.dvdMediator.setUpcase(this);
      }

      DvdUpcaseTitle.prototype.resetTitle = function(title) {
        if (title) {
          this.setTitle(title);
        }
        return this.setUpcaseTitle(this.getTitle().toUpperCase());
      };

      DvdUpcaseTitle.prototype.setSuperTitleUpcase = function() {
        this.setTitle(this.getUpcaseTitle());
        return this.dvdMediator.changeTitle(this);
      };

      DvdUpcaseTitle.prototype.getUpcaseTitle = function() {
        return this.upcaseTitle;
      };

      DvdUpcaseTitle.prototype.setUpcaseTitle = function(upcaseTitle) {
        return this.upcaseTitle = upcaseTitle;
      };

      return DvdUpcaseTitle;

    })(DvdTitle);
  });

}).call(this);
