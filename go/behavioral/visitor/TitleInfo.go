package visitor


//AbstractTitleInfo - the abstract Visitee

type TitleInfo struct {  
   title string
}

func (this *TitleInfo) SetTitle(titleIn string) {
       this.title = titleIn
}

func (this *TitleInfo) GetTitle() string {
	return this.title
}
