#//TeaOrderContext.java - the Context

define [],() ->
  class TeaOrderContext
    constructor :(@tableNumber) ->
    getTable : -> @tableNumber
  return TeaOrderContext
