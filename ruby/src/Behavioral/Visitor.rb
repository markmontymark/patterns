
#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Visitor (uses double-dispatch) Overview
#//One or more related classes have the same method, which calls a method specific for themselves in another class.


require "Behavioral/Visitor/AbstractTitleInfo";
require "Behavioral/Visitor/TitleBlurbVisitor";
require "Behavioral/Visitor/DvdInfo";
require "Behavioral/Visitor/BookInfo";
require "Behavioral/Visitor/GameInfo";
require "Behavioral/Visitor/TitleLongBlurbVisitor";
require "Behavioral/Visitor/TitleShortBlurbVisitor";

