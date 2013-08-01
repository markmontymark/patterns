#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Strategy (aka Policy) Overview
#//An object controls which of a family of methods is called. Each method is in its' own class that extends a common base class.


package Patterns::Behavioral::Strategy;

use Patterns::Behavioral::Strategy::DvdNameStrategy;
use Patterns::Behavioral::Strategy::DvdNameReplaceSpacesStrategy;
use Patterns::Behavioral::Strategy::DvdNameTheAtEndStrategy;
use Patterns::Behavioral::Strategy::DvdNameAllCapStrategy;
use Patterns::Behavioral::Strategy::DvdNameContext;

1;
