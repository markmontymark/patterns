(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['Creational/Prototype/AbstractFork'], function(AbstractFork) {
    var SaladFork;
    SaladFork = (function(_super) {
      __extends(SaladFork, _super);

      function SaladFork() {
        this.setForkName('Salad Fork');
      }

      return SaladFork;

    })(AbstractFork);
    return SaladFork;
  });

}).call(this);
