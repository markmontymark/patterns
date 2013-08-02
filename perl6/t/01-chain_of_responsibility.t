#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Chain of Responsibility Overview
#//A method called in one class will move up a class hierarchy until a method is found that can properly handle the call.

use v5.016;

use strict;
use warnings;

use Test::More;

use Patterns::Behavioral::Chain_Of_Responsibility;

BEGIN {*USING:: = *Patterns::Behavioral::Chain_Of_Responsibility::}

#//TestChainOfResponsibility - testing the Chain of Responsibility

my $topTitle;
my $comedy = new USING::DvdCategory("Comedy");
$comedy->setTopCategoryTitle("Ghost World");

my $comedyChildrens = new USING::DvdSubCategory($comedy, "Childrens");

my $comedyChildrensAquatic = new USING::DvdSubSubCategory($comedyChildrens, "Aquatic");
$comedyChildrensAquatic->setTopSubSubCategoryTitle( "Sponge Bob Squarepants");

say("");
say("Getting top comedy title:");
$topTitle = $comedy->getTopTitle();
say("The top title for " , $comedy->getAllCategories() , " is " , $topTitle);
is($topTitle,'Ghost World','Top title test');

say("");
say("Getting top comedy/childrens title:");
$topTitle = $comedyChildrens->getTopTitle();
say("The top title for " , $comedyChildrens->getAllCategories() , " is " , $topTitle);

say("");
say("Getting top comedy/childrens/aquatic title:");
$topTitle = $comedyChildrensAquatic->getTopTitle();
say("The top title for " , $comedyChildrensAquatic->getAllCategories() , " is " , $topTitle);

done();
