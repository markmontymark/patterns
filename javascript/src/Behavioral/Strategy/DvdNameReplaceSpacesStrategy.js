(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Strategy/DvdNameStrategy'], function(DvdNameStrategy) {
    var DvdNameReplaceSpacesStrategy, _ref;
    return DvdNameReplaceSpacesStrategy = (function(_super) {
      __extends(DvdNameReplaceSpacesStrategy, _super);

      function DvdNameReplaceSpacesStrategy() {
        _ref = DvdNameReplaceSpacesStrategy.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      DvdNameReplaceSpacesStrategy.prototype.formatDvdName = function(dvdName, charIn) {
        return dvdName.replace(new RegExp(' ', 'gm'), charIn);
      };

      return DvdNameReplaceSpacesStrategy;

    })(DvdNameStrategy);
  });

}).call(this);
