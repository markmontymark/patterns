(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Command/CommandAbstract'], function(CommandAbstract) {
    var DvdCommandNameStarsOff;
    return DvdCommandNameStarsOff = (function(_super) {
      __extends(DvdCommandNameStarsOff, _super);

      function DvdCommandNameStarsOff(dvdName) {
        this.dvdName = dvdName;
      }

      DvdCommandNameStarsOff.prototype.execute = function() {
        return this.dvdName.setNameStarsOff();
      };

      return DvdCommandNameStarsOff;

    })(CommandAbstract);
  });

}).call(this);
