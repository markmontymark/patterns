(function() {
  define([], function() {
    var TeaOrderContext;
    TeaOrderContext = (function() {
      function TeaOrderContext(tableNumber) {
        this.tableNumber = tableNumber;
      }

      TeaOrderContext.prototype.getTable = function() {
        return this.tableNumber;
      };

      return TeaOrderContext;

    })();
    return TeaOrderContext;
  });

}).call(this);
