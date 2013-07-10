(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/State/DvdStateName', 'Behavioral/State/DvdStateNameExclaim'], function(DvdStateName, DvdStateNameExclaim) {
    var DvdStateNameStars;
    return DvdStateNameStars = (function(_super) {
      __extends(DvdStateNameStars, _super);

      function DvdStateNameStars(starCount) {
        this.starCount = starCount != null ? starCount : 0;
      }

      DvdStateNameStars.prototype.showName = function(ctx, name) {
        var retval;
        if (!DvdStateNameExclaim) {
          DvdStateNameExclaim = require("Behavioral/State/DvdStateNameExclaim");
        }
        retval = name.replace(' ', '*');
        if ((this.starCount += 1) > 1) {
          ctx.setDvdStateName(new DvdStateNameExclaim());
        }
        return retval;
      };

      return DvdStateNameStars;

    })(DvdStateName);
  });

}).call(this);
