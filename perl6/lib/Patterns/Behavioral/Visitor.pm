package Patterns::Behavioral::Visitor;

#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Visitor (uses double-dispatch) Overview
#//One or more related classes have the same method, which calls a method specific for themselves in another class.


use Patterns::Behavioral::Visitor::DvdInfo;
use Patterns::Behavioral::Visitor::TitleLongBlurbVisitor;
use Patterns::Behavioral::Visitor::TitleShortBlurbVisitor;
use Patterns::Behavioral::Visitor::BookInfo;
use Patterns::Behavioral::Visitor::GameInfo;
use Patterns::Behavioral::Visitor::AbstractTitleInfo;
use Patterns::Behavioral::Visitor::TitleBlurbVisitor;

1;
