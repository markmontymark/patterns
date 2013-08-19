package templatemethod


//BookTitleInfo - two of three concrete templates

type BookTitleInfo struct {
	titleInfo *TitleInfoImpl
   author string
}

func NewBookTitleInfo(titleName, author string) *BookTitleInfo {
	obj := new(BookTitleInfo)
	obj.titleInfo = new(TitleInfoImpl)
	obj.titleInfo.SetTitleName( titleName )
	obj.author = author
	return obj
}

func (this *BookTitleInfo) getAuthor() string {
	return this.author
}   
   
func (this *BookTitleInfo) GetTitleBlurb() string {
	return "Book: " + this.titleInfo.GetTitleName() + ", Author: " + this.author
}
func (this *BookTitleInfo) GetDvdEncodingRegionInfo() string {
	return this.titleInfo.GetDvdEncodingRegionInfo()
}
