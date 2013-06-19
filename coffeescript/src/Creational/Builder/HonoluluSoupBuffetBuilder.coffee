
#/HonoluluSoupBuffetBuilder.java - Two of Two Builder Subclasses

define ['Creational/Builder/SoupBuffetBuilder',
'Creational/Builder/HonoluluClamChowder',
'Creational/Builder/HonoluluFishChowder'
] , (
SoupBuffetBuilder,
HonoluluClamChowder,
HonoluluFishChowder
) ->

  class HonoluluSoupBuffetBuilder extends SoupBuffetBuilder

    constructor : ->

    buildClamChowder   : -> @soupBuffet.clamChowder = new HonoluluClamChowder()
    buildFishChowder   : -> @soupBuffet.fishChowder = new HonoluluFishChowder()
    setSoupBuffetName : -> @soupBuffet.soupBuffetName = "Honolulu Soup Buffet"

  return HonoluluSoupBuffetBuilder
