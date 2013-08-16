package mediator

import (
	"strings"
)

type DvdLowercaseTitle struct {  
   title string
   LowercaseTitle string
   dvdMediator *DvdMediator
}

func NewDvdLowercaseTitle (title string, med *DvdMediator) *DvdLowercaseTitle {
	obj := new(DvdLowercaseTitle)
	obj.title = title
	obj.ResetTitle()
	obj.dvdMediator = med
	med.SetLowercaseTitle(obj)
	return obj
}
    
func NewDvdLowercaseTitleFromObj (dvdTitle *DvdUpcaseTitle, med *DvdMediator) *DvdLowercaseTitle {
    return  NewDvdLowercaseTitle(dvdTitle.GetTitle(), med)
}       
   
func (this *DvdLowercaseTitle) GetTitle() string {
	return this.title
}

func (this *DvdLowercaseTitle) SetTitle(titleIn string) {
	this.title = titleIn
}

func (this *DvdLowercaseTitle) ResetTitle() {
	 this.setLowercaseTitle( strings.ToLower(this.GetTitle()) )
}

func (this *DvdLowercaseTitle) ResetTitleWithString (title string) {
	 this.SetTitle(title)
	 this.ResetTitle()
}    
   
func (this *DvdLowercaseTitle) SetSuperTitleLowercase() {
	 this.SetTitle(this.GetLowercaseTitle())
	 this.dvdMediator.ChangeLowerTitle(this)
}
   
func (this *DvdLowercaseTitle) GetLowercaseTitle() string {
	return this.LowercaseTitle
}

func (this *DvdLowercaseTitle) setLowercaseTitle(lTitle string) {
    this.LowercaseTitle = lTitle
}

