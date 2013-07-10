(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/State/DvdStateName', 'Behavioral/State/DvdStateNameStars'], function(DvdStateName, DvdStateNameStars) {
    var DvdStateNameExclaim, _ref;
    return DvdStateNameExclaim = (function(_super) {
      __extends(DvdStateNameExclaim, _super);

      function DvdStateNameExclaim() {
        _ref = DvdStateNameExclaim.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      DvdStateNameExclaim.prototype.showName = function(ctx, name) {
        var retval;
        if (!DvdStateNameStars) {
          DvdStateNameStars = require("Behavioral/State/DvdStateNameStars");
        }
        retval = name.replace(' ', '!');
        ctx.setDvdStateName(new DvdStateNameStars());
        return retval;
      };

      return DvdStateNameExclaim;

    })(DvdStateName);
  });

}).call(this);
