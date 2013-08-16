package chainofresponsibility

import (
   "testing"
   "../../lib/asserts"
)

var comedy *DvdCategory = NewDvdCategory("Comedy")
var comedyChildrens = NewDvdSubCategory(comedy, "Childrens")
var comedyChildrensAquatic = NewDvdSubSubCategory(comedyChildrens, "Aquatic")


func TestDvdCategory( t *testing.T) {
	comedy.SetTopCategoryTitle("Ghost World")
	var topTitle1 = comedy.GetTopTitle()
	asserts.Equals( t, "blah", "The top title for " + comedy.GetAllCategories() + " is " + topTitle1, "The top title for Comedy is Ghost World")
}

func TestDvdSubCategory( t *testing.T) {
	var topTitle2 = comedyChildrens.GetTopTitle()
	asserts.Equals( t, "asdf", "The top title for " + comedyChildrens.GetAllCategories() + " is " + topTitle2, "The top title for Comedy/Childrens is Ghost World")
}

func TestDvdSubSubCategory( t *testing.T) {
	comedyChildrensAquatic.SetTopSubSubCategoryTitle( "Sponge Bob Squarepants")
	var topTitle3 = comedyChildrensAquatic.GetTopTitle()
	asserts.Equals( t, "fdsa", "The top title for " + comedyChildrensAquatic.GetAllCategories() + " is " + topTitle3, "The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants" )
}
