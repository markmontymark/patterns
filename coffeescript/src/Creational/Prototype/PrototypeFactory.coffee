
#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Java Design Patterns Prototype
#//Prototype Overview
#//Make new objects by cloning the objects which you set as prototypes
#//Still reading? Save your time, watch the video lessons!
#//Video tutorial on design patterns
#//PrototypeFactory.java - a Factory for Prototypes

define [] , () ->
  class PrototypeFactory

    constructor : (@prototypeSpoon, @prototypeFork) ->

    makeSpoon : -> @prototypeSpoon.clone()

    makeFork : -> @prototypeFork.clone()

  return PrototypeFactory
