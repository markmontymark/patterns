package chainofresponsibility

//DvdSubSubCategory.java - the Lowest Class in the Chain

//import "dvdsubcategory"

type DvdSubSubCategory struct {  
   Parent DvdSubCategory
   SubSubCategory, TopSubSubCategoryTitle string
}
   
func (this *DvdSubSubCategory) SetSubSubCategory(SubSubCategoryIn string ) {
	 this.SubSubCategory = SubSubCategoryIn
}
func (this *DvdSubSubCategory) GetSubSubCategory() string {
	 return this.SubSubCategory
} 
func (this *DvdSubSubCategory) SetSubCategory(subCategoryIn string ) {
	 this.Parent.SetSubCategory(subCategoryIn)
}
func (this *DvdSubSubCategory) GetSubCategory() string {
	 return this.Parent.GetSubCategory()
}
func (this *DvdSubSubCategory) SetCategory(categoryIn string ) {
	 this.Parent.SetCategory(categoryIn)
}
func (this *DvdSubSubCategory) GetCategory() string {
	 return this.Parent.GetCategory()
}
func (this *DvdSubSubCategory) GetAllCategories() string {
	 return this.GetCategory() + "/" + this.GetSubCategory() + "/" + this.GetSubSubCategory()
}   

func (this *DvdSubSubCategory) SetTopSubSubCategoryTitle( TopSubSubCategoryTitleIn string ) {
	this.TopSubSubCategoryTitle = TopSubSubCategoryTitleIn
}
func (this *DvdSubSubCategory) GetTopSubSubCategoryTitle() string {
	 return this.TopSubSubCategoryTitle
}
func (this *DvdSubSubCategory) SetTopSubCategoryTitle( topSubCategoryTitleIn string ) {
	 this.Parent.SetTopSubCategoryTitle(topSubCategoryTitleIn)
}
func (this *DvdSubSubCategory) GetTopSubCategoryTitle() string {
	 return this.Parent.GetTopSubCategoryTitle()
}
func (this *DvdSubSubCategory) SetTopCategoryTitle(topCategoryTitleIn string ) {
	 this.Parent.SetTopCategoryTitle(topCategoryTitleIn)
}
func (this *DvdSubSubCategory) GetTopCategoryTitle() string {
	 return this.Parent.GetTopCategoryTitle()
}

func (this *DvdSubSubCategory) GetTopTitle() string {
	if v := this.GetTopSubSubCategoryTitle(); v != "" {
		return v
	}
	return this.Parent.GetTopTitle()
}
