package visitor


type GameInfo struct { // implements TitleInfoInterface, has TitleInfoImpl 
	titleInfo *TitleInfoImpl
}

func NewGameInfo(titleName string ) *GameInfo {
	obj := new(GameInfo)
	obj.titleInfo  = new(TitleInfoImpl)
	obj.titleInfo.SetTitleName( titleName )
	return obj
}    

func (this *GameInfo ) GetTitleName() string {
	return this.titleInfo.GetTitleName()
}
   
func (this *GameInfo) Accept( tbv TitleBlurbVisitorInterface ) {
	tbv.VisitGame( this )
}
