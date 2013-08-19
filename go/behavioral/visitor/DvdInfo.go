package visitor


type DvdInfo struct {  
	titleInfo *TitleInfoImpl
   star string
   encodingRegion string
}
    
func NewDvdInfo(titleName string , star string, encodingRegion string) *DvdInfo {
	obj := new(DvdInfo)
	obj.titleInfo = new(TitleInfoImpl)
	obj.titleInfo.SetTitleName(titleName)
	obj.star = star
	obj.encodingRegion = encodingRegion
	return obj
}    
   
func (this *DvdInfo ) GetStar() string {
	return this.star
}

func (this *DvdInfo) GetEncodingRegion() string {
	return this.encodingRegion
}

func (this *DvdInfo) GetTitleName() string {
	return this.titleInfo.GetTitleName()
}
   
func (this *DvdInfo) Accept( tbv TitleBlurbVisitorInterface ) {
	tbv.VisitDvd(this)
}


