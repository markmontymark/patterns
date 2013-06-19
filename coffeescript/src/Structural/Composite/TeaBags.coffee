define [] , () ->
  class TeaBags

    teaBagList : null # instance of []
    parent :  null # instance of TeaBags
    name : null

    constructor : ->
      throw "Can't instantiate abstract class, TeaBags"

    countTeaBags : ->
      throw "Unimplemented method TeaBags.countTeaBags"

    add : ->
      throw "Unimplemented method TeaBags.add"

    remove : ->
      throw "Unimplemented method TeaBags.remove"

    createListIterator : ->
      throw "Unimplemented method TeaBags.createListIterator"

    setName : (nameIn) -> @name = nameIn
    getName : -> @name
    setParent : (parentIn) -> @parent = parentIn
    getParent : -> @parent

  return TeaBags
