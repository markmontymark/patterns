package visitor


type BookInfo struct {
	titleInfo *TitleInfoImpl
	author string
}


func NewBookInfo(titleName, author string) *BookInfo {
	obj := new(BookInfo)
	obj.titleInfo = new(TitleInfoImpl)
	obj.titleInfo.SetTitleName( titleName )
	obj.author = author
	return obj
}    
   
func (this *BookInfo) GetAuthor() string {
	return this.author
}
func (this *BookInfo) GetTitleName() string {
	return this.titleInfo.GetTitleName()
}
   
func (this *BookInfo) Accept( tbv TitleBlurbVisitorInterface) {
	tbv.VisitBook( this )
}
