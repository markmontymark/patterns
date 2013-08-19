package visitor


//AbstractTitleInfo.java - the abstract Visitee

type TitleInfoInterface interface {  
   Accept(tbv TitleBlurbVisitorInterface)
}
