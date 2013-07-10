(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Behavioral/Iterator/IteratorInterface'], function(IteratorInterface) {
    var DvdListIterator;
    return DvdListIterator = (function(_super) {
      __extends(DvdListIterator, _super);

      function DvdListIterator(list) {
        this.list = list;
        this.currentPosition = 0;
      }

      DvdListIterator.prototype.first = function() {
        return this.currentPosition = 0;
      };

      DvdListIterator.prototype.next = function() {
        if (this.currentPosition < this.list.titleCount) {
          return this.currentPosition++;
        }
      };

      DvdListIterator.prototype.isDone = function() {
        return this.currentPosition >= this.list.titleCount;
      };

      DvdListIterator.prototype.currentItem = function() {
        return this.list.titles[this.currentPosition];
      };

      return DvdListIterator;

    })(IteratorInterface);
  });

}).call(this);
