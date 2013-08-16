package interpreter


//TitleAndActor - A Helper Class

type TitleAndActor struct {
    title string
    actor string
}

func NewTitleAndActor(title string , actor string) *TitleAndActor {
	obj := new(TitleAndActor)
	obj.actor = actor
	obj.title = title
	return obj
}

func (this *TitleAndActor) GetTitle () string {
	return this.title
}

func (this *TitleAndActor) GetActor () string {
	return this.actor
}
