(function() {
  define([], function() {
    var CommandAbstract;
    return CommandAbstract = (function() {
      function CommandAbstract() {
        throw "Can't instantiate an abstract class, CommandAbstract";
      }

      CommandAbstract.prototype.execute = function() {
        throw "Unimplemented method, CommandAbstract.execute";
      };

      return CommandAbstract;

    })();
  });

}).call(this);
