package chainofresponsibility

import (
	"fmt"
   "testing"
   "../../lib/asserts"
)

var comedy *DvdCategory = NewDvdCategory("Comedy")
var comedyChildrens = NewDvdSubCategory(comedy, "Childrens")
var comedyChildrensAquatic = NewDvdSubSubCategory(comedyChildrens, "Aquatic")


func TestDvdCategory( t *testing.T) {
	comedy.SetTopCategoryTitle("Ghost World")
	var topTitle1 = comedy.GetTopTitle()
	asserts.Equals( t, 
		"DvdCategory test", 
		fmt.Sprintf("The top title for %s is %s" , comedy.GetAllCategories() , topTitle1 ), 
		"The top title for Comedy is Ghost World")
}

func TestDvdSubCategory( t *testing.T) {
	var topTitle2 = comedyChildrens.GetTopTitle()
	asserts.Equals( t, "DvdSubCategory test", 
		fmt.Sprintf("The top title for %s is %s" , comedyChildrens.GetAllCategories() , topTitle2), 
		"The top title for Comedy/Childrens is Ghost World")
}

func TestDvdSubSubCategory( t *testing.T) {
	comedyChildrensAquatic.SetTopSubSubCategoryTitle( "Sponge Bob Squarepants")
	var topTitle3 = comedyChildrensAquatic.GetTopTitle()
	asserts.Equals( t, "DvdSubSubCategory test", 
		fmt.Sprintf("The top title for %s is %s" , comedyChildrensAquatic.GetAllCategories() , topTitle3), 
		"The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants" )
}
