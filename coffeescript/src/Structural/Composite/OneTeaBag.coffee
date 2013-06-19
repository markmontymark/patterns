
#//OneTeaBag.java - one composite extension - the "leaf"

define ['Structural/Composite/TeaBags'
],(
TeaBags
) ->
  class OneTeaBag extends TeaBags
    constructor : (@name) ->
    countTeaBags : -> 1
    add : -> false
    remove : -> false
    createListIterator : -> null
  return OneTeaBag
