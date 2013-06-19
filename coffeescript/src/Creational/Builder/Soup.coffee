
#//Soup.java - A helper class

define [], ->
  class Soup
    constructor : ->
      throw "Can't instantiate abstract class, Soup"

    toString : ->
      retval = (i for i in @soupIngredients)
      retval.unshift ' Ingredients: '
      retval.unshift @soupName
      retval.toString()

  return Soup
