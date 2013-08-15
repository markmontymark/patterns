package chainofresponsibility

import (
	"testing"
)


func TestChainOfResponsibility (t *testing.T) {

		comedy := DvdCategory{"Comedy",""}
		comedy.SetTopCategoryTitle("Ghost World")

		comedyChildrens := DvdSubCategory{comedy, "Childrens", ""}

		comedyChildrensAquatic := DvdSubSubCategory{comedyChildrens, "Aquatic", ""}
		comedyChildrensAquatic.SetTopSubSubCategoryTitle( "Sponge Bob Squarepants")

		topTitle := comedy.GetTopTitle()
		//t.assertEquals("DvdCategory Test", 
			//"The top title for Comedy is Ghost World",
			//("The top title for " + comedy.GetAllCategories() + " is " + topTitle))

		expected := "The top title for Comedy is Ghost World"
		got := "The top title for " + comedy.GetAllCategories() + " is " + topTitle
		if got != expected {
			t.Errorf("Failed DvdCategory Test\ngot\n%s\n\nexpected\n%s\n",got,expected)
		}

		topTitle = comedyChildrens.GetTopTitle()
		expected = "The top title for Comedy/Childrens is Ghost World"
		got = "The top title for " + comedyChildrens.GetAllCategories() + " is " + topTitle
		if got != expected {
			t.Errorf("Failed DvdSubCategory Test\ngot\n%s\n\nexpected\n%s\n",got,expected)
		}

		topTitle = comedyChildrensAquatic.GetTopTitle()
		expected ="The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants"
		got = "The top title for " + comedyChildrensAquatic.GetAllCategories() + " is " + topTitle
		if got != expected {
			t.Errorf("Failed DvdSubSubCategory Test\ngot\n%s\n\nexpected\n%s\n",got,expected)
		}
}
