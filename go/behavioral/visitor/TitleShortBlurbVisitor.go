package visitor

type TitleShortBlurbVisitor struct { // implements Visitor
	Title
}

func NewTitleShortBlurbVisitor () * TitleShortBlurbVisitor {
   return &TitleShortBlurbVisitor{&TitleInfo{}}
}

func ( this *TitleShortBlurbVisitor) Visit( info BlurberAcceptor ) {
	this.SetTitle( info.GetShortBlurb() )
}

