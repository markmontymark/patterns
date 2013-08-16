package mediator


type DvdMediator struct {
   UpcaseTitle *DvdUpcaseTitle
   LowercaseTitle *DvdLowercaseTitle
}

func NewDvdMediator () *DvdMediator {
	obj := new(DvdMediator)
	return obj
}

func (this *DvdMediator) SetUpcaseTitle ( obj *DvdUpcaseTitle) {
	this.UpcaseTitle = obj
}

func (this *DvdMediator) SetLowercaseTitle ( obj *DvdLowercaseTitle) {
	this.LowercaseTitle = obj
}
   
func (this *DvdMediator) ChangeUpTitle (dvdUpcaseTitle *DvdUpcaseTitle) {
	 this.LowercaseTitle.ResetTitleWithString(dvdUpcaseTitle.GetTitle());
}

func (this *DvdMediator) ChangeLowerTitle(dvdLowercaseTitle *DvdLowercaseTitle) {
	 this.UpcaseTitle.ResetTitleWithString(dvdLowercaseTitle.GetTitle());
}   
