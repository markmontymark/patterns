(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Strategy/DvdNameStrategy'], function(DvdNameStrategy) {
    var DvdNameTheAtEndStrategy, _ref;
    return DvdNameTheAtEndStrategy = (function(_super) {
      __extends(DvdNameTheAtEndStrategy, _super);

      function DvdNameTheAtEndStrategy() {
        _ref = DvdNameTheAtEndStrategy.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      DvdNameTheAtEndStrategy.prototype.formatDvdName = function(dvdName, charIn) {
        switch (false) {
          case !dvdName.match(/^The /):
            return dvdName.substring(4, dvdName.length) + ", The";
          case !dvdName.match(/^THE /):
            return dvdName.substring(4, dvdName.length) + ", THE";
          case !dvdName.match(/^the /):
            return dvdName.substring(4, dvdName.length) + ", the";
          default:
            return dvdName;
        }
      };

      return DvdNameTheAtEndStrategy;

    })(DvdNameStrategy);
  });

}).call(this);
