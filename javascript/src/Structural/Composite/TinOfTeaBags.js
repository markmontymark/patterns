(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Structural/Composite/TeaBags'], function(TeaBags) {
    var TinOfTeaBags;
    TinOfTeaBags = (function(_super) {
      __extends(TinOfTeaBags, _super);

      function TinOfTeaBags(name) {
        this.name = name;
        this.teaBagList = [];
      }

      TinOfTeaBags.prototype.countTeaBags = function() {
        var list, teaBags, totalTeaBags, _i, _len;
        totalTeaBags = 0;
        list = this.createListIterator();
        for (_i = 0, _len = list.length; _i < _len; _i++) {
          teaBags = list[_i];
          totalTeaBags += teaBags.countTeaBags();
        }
        return totalTeaBags;
      };

      TinOfTeaBags.prototype.add = function(teaBagsToAdd) {
        teaBagsToAdd.setParent(this);
        return this.teaBagList.push(teaBagsToAdd);
      };

      TinOfTeaBags.prototype.remove = function(teaBagsToRemove) {
        var list, list_size, teaBag;
        list = this.createListIterator();
        list_size = list.length;
        this.teaBagList = (function() {
          var _i, _len, _results;
          _results = [];
          for (_i = 0, _len = list.length; _i < _len; _i++) {
            teaBag = list[_i];
            if (teaBag !== teaBagsToRemove) {
              _results.push(teaBag);
            }
          }
          return _results;
        })();
        return list_size !== this.teaBagList.length;
      };

      TinOfTeaBags.prototype.createListIterator = function() {
        return this.teaBagList;
      };

      return TinOfTeaBags;

    })(TeaBags);
    return TinOfTeaBags;
  });

}).call(this);
