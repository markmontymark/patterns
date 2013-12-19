package chainofresponsibility

import (
	"fmt"
   "testing"
   "strings"
   "../../lib/asserts"
)


type TopTitle interface {  
   getTopTitle() string
   getAllCategories() string
}

type dvdcategory struct {
	Parent *dvdcategory
   Category , TopCategoryTitle string
}

func DvdCategory( parent *dvdcategory, cat string ) *dvdcategory {
	retval := dvdcategory{}
	retval.Parent = parent
	retval.Category = cat
	return &retval
}

func (this *dvdcategory) GetCategory () string {
	return this.Category
}
    
func (this *dvdcategory) SetCategory (cat string) {
	if this.Parent != nil {
		this.Parent.SetCategory(cat)
		return;
	}
	this.Category = cat
}
   
func (this *dvdcategory) SetTopCategoryTitle (topCategoryTitleIn string) {
	this.TopCategoryTitle = topCategoryTitleIn
}

func (this *dvdcategory) GetTopCategoryTitle () string {
	if this.TopCategoryTitle == "" && this.Parent != nil {
		return this.Parent.GetTopCategoryTitle()
	}
	 return this.TopCategoryTitle
}

func (this *dvdcategory ) GetAllCategories (accumulator ...string) string {
	if this.Parent == nil {
		accumulator = append(accumulator, this.Category) 
		Reverse( accumulator )
		return strings.Join( accumulator, "/" )
	}
	accumulator = append(accumulator, this.Category)
	return this.Parent.GetAllCategories( accumulator... )
}

func (this *dvdcategory )  GetTopTitle ()  string {
	 return this.GetTopCategoryTitle()
}

func Reverse (a []string) {
	for i, j := 0, len(a)-1; i < j; i, j = i+1, j-1 {
		 a[i], a[j] = a[j], a[i]
	}
}

func TestChainOfResponsibility( t *testing.T) {
	comedy := DvdCategory(nil,"Comedy")
	comedyChildrens := DvdCategory(comedy, "Childrens")
	comedyChildrensAquatic := DvdCategory(comedyChildrens, "Aquatic")

	comedy.SetTopCategoryTitle("Ghost World")
	asserts.Equals( t, 
		"DvdCategory test", 
		fmt.Sprintf("The top title for %s is %s" , 
			comedy.GetAllCategories() , 
			comedy.GetTopTitle()), 
			"The top title for Comedy is Ghost World")

	asserts.Equals( t, "DvdSubCategory test", 
		fmt.Sprintf("The top title for %s is %s" , 
			comedyChildrens.GetAllCategories() , 
			comedyChildrens.GetTopTitle() ), 
			"The top title for Comedy/Childrens is Ghost World")


	comedyChildrensAquatic.SetTopCategoryTitle( "Sponge Bob Squarepants")
	asserts.Equals( t, "DvdSubSubCategory test", 
		fmt.Sprintf("The top title for %s is %s" , 
			comedyChildrensAquatic.GetAllCategories() , 
			comedyChildrensAquatic.GetTopTitle() ), 
		"The top title for Comedy/Childrens/Aquatic is Sponge Bob Squarepants" )
}
