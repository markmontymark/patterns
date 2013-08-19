package visitor

type TitleShortBlurbVisitor struct {
	tbv * TitleBlurbVisitorImpl
}

func NewTitleShortBlurbVisitor () * TitleShortBlurbVisitor {
   obj :=  new(TitleShortBlurbVisitor)
   obj.tbv = new(TitleBlurbVisitorImpl)
	return obj
}

func ( this *TitleShortBlurbVisitor) VisitBook ( info *BookInfo ) {
   this.tbv.SetTitleBlurb( "SB-Book: " + info.GetTitleName() )
}
	
func ( this *TitleShortBlurbVisitor) VisitDvd ( info *DvdInfo ) {
   this.tbv.SetTitleBlurb( "SB-DVD: " + info.GetTitleName() )
}
func ( this *TitleShortBlurbVisitor) VisitGame ( info *GameInfo ) {
   this.tbv.SetTitleBlurb( "SB-Game: " + info.GetTitleName() )
}

func (this *TitleShortBlurbVisitor) GetTitleBlurb () string {
   return this.tbv.GetTitleBlurb()
}

