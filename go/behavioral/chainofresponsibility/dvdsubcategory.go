
package chainofresponsibility

//DvdSubCategory - the Middle Class in the Chain

//import "toptitle"
//import "dvdcategory"

type DvdSubCategory struct {
	Parent *DvdCategory
   SubCategory , TopSubCategoryTitle string
}

func NewDvdSubCategory ( parent *DvdCategory, subCategory string ) *DvdSubCategory {
	obj := new(DvdSubCategory)
	obj.Parent = parent
	obj.SubCategory = subCategory
	return obj
}

func (this *DvdSubCategory) SetSubCategory (cat string) {
	this.SubCategory = cat
}

func (this *DvdSubCategory) GetSubCategory () string {
	return this.SubCategory
}

func (this *DvdSubCategory) SetCategory (categoryIn string ) {
       this.Parent.SetCategory(categoryIn);
}
func (this *DvdSubCategory) GetCategory () string {
	 return this.Parent.GetCategory();
}

func (this *DvdSubCategory) GetAllCategories() string {
	 return this.GetCategory() + "/" + this.GetSubCategory();
}
   
func (this *DvdSubCategory) SetTopSubCategoryTitle (TopSubCategoryTitleIn string ) {
	 this.TopSubCategoryTitle = TopSubCategoryTitleIn;
}
func (this *DvdSubCategory) GetTopSubCategoryTitle () string {
	 return this.TopSubCategoryTitle;
}

func (this *DvdSubCategory) SetTopCategoryTitle (topCategoryTitleIn string) {
	this.Parent.SetTopCategoryTitle(topCategoryTitleIn);
}

func (this *DvdSubCategory) GetTopCategoryTitle () string {
	return this.Parent.GetTopCategoryTitle();
}
   
func (this *DvdSubCategory) GetTopTitle () string {
	 if v := this.GetTopSubCategoryTitle(); v != "" {
		  return v
	 }
	 return this.Parent.GetTopTitle();
}
