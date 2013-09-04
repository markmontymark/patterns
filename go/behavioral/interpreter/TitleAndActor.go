package interpreter


//TitleAndActor - A Helper Class

type TitleAndActor struct {
    Title string
    Actor string
}

func NewTitleAndActor(title string , actor string) *TitleAndActor {
	return &TitleAndActor{title,actor}
}

