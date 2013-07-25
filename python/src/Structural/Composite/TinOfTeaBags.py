
#//TinOfTeaBags.java - one composite extension - the "node"

define ['Structural/Composite/TeaBags'
],(
TeaBags
) ->
  class TinOfTeaBags extends TeaBags
    constructor : (@name) ->
      @teaBagList = []

    countTeaBags : ->
      totalTeaBags = 0
      list = @createListIterator()
      for teaBags in list
        totalTeaBags += teaBags.countTeaBags()
      totalTeaBags

    add : (teaBagsToAdd) ->
      teaBagsToAdd.setParent(@)
      @teaBagList.push(teaBagsToAdd)

    remove : (teaBagsToRemove) ->
      list = @createListIterator()
      list_size = list.length
      @teaBagList = (teaBag for teaBag in list when teaBag isnt teaBagsToRemove)
      list_size isnt @teaBagList.length

    createListIterator : ->
      @teaBagList

  return TinOfTeaBags
