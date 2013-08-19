package visitor

type TitleLongBlurbVisitor struct { // implements TitleBlurbVisitorInterface , has TitleBlurbVisitorImpl
	tbv *TitleBlurbVisitorImpl
}



func NewTitleLongBlurbVisitor () * TitleLongBlurbVisitor {
	obj :=  new(TitleLongBlurbVisitor)
	obj.tbv = new(TitleBlurbVisitorImpl)
	return obj
}


func (this *TitleLongBlurbVisitor) VisitBook( info *BookInfo ) {
	this.tbv.SetTitleBlurb(
		"LB-Book: " + info.GetTitleName() + 
		", Author: " + info.GetAuthor())
}

func (this *TitleLongBlurbVisitor) VisitDvd( info *DvdInfo ) {
	this.tbv.SetTitleBlurb(
			"LB-DVD: " + info.GetTitleName() + 
			", starring " + info.GetStar() + 
			", encoding region: " + info.GetEncodingRegion())
}

func (this *TitleLongBlurbVisitor) VisitGame( info *GameInfo ) {
	this.tbv.SetTitleBlurb(
			"LB-Game: " + info.GetTitleName())
}

func (this *TitleLongBlurbVisitor) GetTitleBlurb () string {
	return this.tbv.GetTitleBlurb()
}
