#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/

# State Pattern
#//An object appears to change its' class when the class it passes calls through to switches itself for a related class.

use v6;

package Patterns::Behavioral::State;

use Patterns::Behavioral::State::DvdStateNameStars;
use Patterns::Behavioral::State::DvdStateNameExclaim;
use Patterns::Behavioral::State::DvdStateName;
use Patterns::Behavioral::State::DvdStateContext;

1;
