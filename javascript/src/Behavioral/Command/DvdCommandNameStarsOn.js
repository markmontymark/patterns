(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Command/CommandAbstract'], function(CommandAbstract) {
    var DvdCommandNameStarsOn;
    return DvdCommandNameStarsOn = (function(_super) {
      __extends(DvdCommandNameStarsOn, _super);

      function DvdCommandNameStarsOn(dvdName) {
        this.dvdName = dvdName;
      }

      DvdCommandNameStarsOn.prototype.execute = function() {
        return this.dvdName.setNameStarsOn();
      };

      return DvdCommandNameStarsOn;

    })(CommandAbstract);
  });

}).call(this);
