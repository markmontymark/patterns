package visitor

type TitleLongBlurbVisitor struct { // implements Visitor, has Title
	Title
}

func NewTitleLongBlurbVisitor () * TitleLongBlurbVisitor {
	return &TitleLongBlurbVisitor{&TitleInfo{}}
}


func (this *TitleLongBlurbVisitor) Visit( info BlurberAcceptor) {
	this.SetTitle( info.GetLongBlurb() )
}

/*
	this.tbv.SetTitleBlurb( info.Blurb() )
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


*/
