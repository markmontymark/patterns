package visitor


//AbstractTitleInfo - the abstract Visitee

type TitleInfoImpl struct {  
   titleName string
}

func (this *TitleInfoImpl) SetTitleName(titleNameIn string) {
       this.titleName = titleNameIn
}

func (this *TitleInfoImpl) GetTitleName() string {
	return this.titleName
}
