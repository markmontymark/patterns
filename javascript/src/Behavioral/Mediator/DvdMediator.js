(function() {
  define(['Behavioral/Mediator/DvdLowercaseTitle', 'Behavioral/Mediator/DvdUpcaseTitle'], function(DvdLowercaseTitle, DvdUpcaseTitle) {
    var DvdMediator;
    return DvdMediator = (function() {
      function DvdMediator() {}

      DvdMediator.prototype.dvdUpcaseTitle = null;

      DvdMediator.prototype.dvdLowercaseTitle = null;

      DvdMediator.prototype.setUpcase = function(dvdUpcaseTitle) {
        return this.dvdUpcaseTitle = dvdUpcaseTitle;
      };

      DvdMediator.prototype.setLowercase = function(dvdLowercaseTitle) {
        return this.dvdLowercaseTitle = dvdLowercaseTitle;
      };

      DvdMediator.prototype.changeTitle = function(title) {
        if (title instanceof DvdUpcaseTitle) {
          return this.dvdLowercaseTitle.resetTitle(this.dvdUpcaseTitle.getTitle());
        } else if (title instanceof DvdLowercaseTitle) {
          return this.dvdUpcaseTitle.resetTitle(this.dvdLowercaseTitle.getTitle());
        }
      };

      return DvdMediator;

    })();
  });

}).call(this);
