package chainofresponsibility

//import "toptitle"

type DvdCategory struct {
   Category , TopCategoryTitle string
}

func (this *DvdCategory) GetCategory () string {
	return this.Category
}
    
func (this *DvdCategory) SetCategory (cat string) {
	this.Category = cat
}
   
func (this *DvdCategory) SetTopCategoryTitle (topCategoryTitleIn string) {
	 this.TopCategoryTitle = topCategoryTitleIn
}

func (this *DvdCategory) GetTopCategoryTitle () string {
	 return this.TopCategoryTitle
}

func (this *DvdCategory ) GetAllCategories () string {
	return this.GetCategory()
}

func (this *DvdCategory )  GetTopTitle ()  string {
	 return this.TopCategoryTitle
}
