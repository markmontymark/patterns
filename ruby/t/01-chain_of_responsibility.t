#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Chain of Responsibility Overview
#//A method called in one class will move up a class hierarchy until a method is found that can properly handle the call.

gem "minitest";
require "minitest/autorun"

require "Behavioral::Chain_Of_Responsibility"

$topTitle;
$comedy = DvdCategory.new(category => "Comedy");
$comedy.setTopCategoryTitle("Ghost World");

$comedyChildrens = DvdSubCategory.new(parent => $comedy, subCategory => "Childrens");

$comedyChildrensAquatic = DvdSubSubCategory.new( parent => $comedyChildrens, subSubCategory => "Aquatic");
$comedyChildrensAquatic.setTopSubSubCategoryTitle( "Sponge Bob Squarepants");
$topTitle = $comedy.getTopTitle();

is "The top title for " ~ $comedy.getAllCategories() ~ " is " ~ $topTitle,
	'The top title for Comedy is Ghost World',
	"$?FILE dvdcategory test";

$topTitle = $comedyChildrens.getTopTitle();

is "The top title for " ~ $comedyChildrens.getAllCategories() ~ " is " ~ $topTitle, 
	"The top title for Comedy/Childrens is Ghost World" , 
	"$?FILE dvd sub category test";

$topTitle = $comedyChildrensAquatic.getTopTitle();

is "The top title for " ~ $comedyChildrensAquatic.getAllCategories() ~ " is " ~ $topTitle, 
	'The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants' , 
	"$?FILE dvd sub sub category test";

done();
