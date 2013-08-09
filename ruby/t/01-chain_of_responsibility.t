#//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
#//// Original Author: Larry Truett
#//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
#//Chain of Responsibility Overview
#//A method called in one class will move up a class hierarchy until a method is found that can properly handle the call.

require "tapper"
require "Behavioral/Chain_Of_Responsibility"

extend Tapper


comedy = DvdCategory.new("Comedy");
comedy.setTopCategoryTitle("Ghost World");

comedyChildrens = DvdSubCategory.new( comedy, "Childrens");

comedyChildrensAquatic = DvdSubSubCategory.new( comedyChildrens, "Aquatic");
comedyChildrensAquatic.setTopSubSubCategoryTitle( "Sponge Bob Squarepants");
topTitle = comedy.getTopTitle()

test "dvdcategory test" do
	assert_equal "The top title for #{comedy.getAllCategories()} is #{topTitle}",
		'The top title for Comedy is Ghost World'
end

topTitle = comedyChildrens.getTopTitle();

test "dvd sub category test" do
	assert_equal "The top title for #{ comedyChildrens.getAllCategories() } is #{ topTitle }", "The top title for Comedy/Childrens is Ghost World"
end

topTitle = comedyChildrensAquatic.getTopTitle();

test "dvd sub sub category test" do
	assert_equal "The top title for #{ comedyChildrensAquatic.getAllCategories() } is #{ topTitle }", 
	'The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants'
end

done();
