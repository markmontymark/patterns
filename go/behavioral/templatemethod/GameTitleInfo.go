package templatemethod


//GameTitleInfo.java - three of three concrete templates

type GameTitleInfo struct {
	titleInfo *TitleInfoImpl
} //implements TitleInfoInterface {  

func NewGameTitleInfo(titleName string) *GameTitleInfo {
	obj := new(GameTitleInfo)
	obj.titleInfo = new(TitleInfoImpl)
	obj.titleInfo.SetTitleName(titleName)
	return obj
}     
   
func (this *GameTitleInfo) GetTitleBlurb() string {
	return "Game: " + this.titleInfo.GetTitleName()
}

func (this *GameTitleInfo) GetDvdEncodingRegionInfo() string {
	return this.titleInfo.GetDvdEncodingRegionInfo() 
}

