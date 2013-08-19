package templatemethod


//DvdTitleInfo.java - one of three concrete templates

type DvdTitleInfo struct { // implements TitleInfoInterface, has TitleInfoImpl
	titleInfo *TitleInfoImpl
   star string 
   encodingRegion string
}
    
func NewDvdTitleInfo(titleName, star, encodingRegion string) *DvdTitleInfo {
	obj := new(DvdTitleInfo)
	obj.titleInfo = new(TitleInfoImpl)
	obj.titleInfo.SetTitleName(titleName)
	obj.star = star
	obj.encodingRegion = encodingRegion
	return obj
}
   
func (this *DvdTitleInfo) GetTitleBlurb() string {
	return "DVD: " + this.titleInfo.GetTitleName() + ", starring " + this.star
}
   
func (this *DvdTitleInfo) GetDvdEncodingRegionInfo() string {
	return ", encoding region: " + this.encodingRegion
}
