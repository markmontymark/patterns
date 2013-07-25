
#/BostonSoupBuffetBuilder.java - Two of Two Builder Subclasses

define ['Creational/Builder/SoupBuffetBuilder',
'Creational/Builder/BostonClamChowder',
'Creational/Builder/BostonFishChowder'
] , (
SoupBuffetBuilder,
BostonClamChowder,
BostonFishChowder
) ->

  class BostonSoupBuffetBuilder extends SoupBuffetBuilder

    constructor : ->

    buildClamChowder   : -> @soupBuffet.clamChowder = new BostonClamChowder()
    buildFishChowder   : -> @soupBuffet.fishChowder = new BostonFishChowder()
    setSoupBuffetName : -> @soupBuffet.soupBuffetName = "Boston Soup Buffet"

  return BostonSoupBuffetBuilder
