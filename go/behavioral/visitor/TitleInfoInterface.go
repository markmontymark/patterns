package visitor


//AbstractTitleInfo - the abstract Visitee

type TitleInfoInterface interface {  
   Accept(tbv TitleBlurbVisitorInterface)
}
