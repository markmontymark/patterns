package Patterns::Structural::Adapter;

#/// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Adapter (aka Wrapper) Overview
#//In the Adapter Design Pattern, a class converts the interface of one class to be what another class expects.
#
#//The adapter does this by taking an instance of the class to be converted (the adaptee) and uses the methods the adaptee has available to create the methods which are expected.



use Patterns::Structural::Adapter::TeaBag;
use Patterns::Structural::Adapter::TeaCup;
use Patterns::Structural::Adapter::TeaBall;
use Patterns::Structural::Adapter::LooseLeafTea;

1;
