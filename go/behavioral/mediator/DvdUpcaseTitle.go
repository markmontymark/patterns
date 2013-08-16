package mediator

import (
	"strings"
)


type DvdUpcaseTitle struct {  
   title string
   upcaseTitle string
   dvdMediator *DvdMediator
}

func NewDvdUpcaseTitle (title string, med *DvdMediator) *DvdUpcaseTitle {
	obj := new(DvdUpcaseTitle)
	obj.title = title
	obj.ResetTitle()
	obj.dvdMediator = med
	med.SetUpcaseTitle(obj)
	return obj
}
    
func NewDvdUpcaseTitleFromObj (dvdTitle *DvdLowercaseTitle, med *DvdMediator) *DvdUpcaseTitle {
    return  NewDvdUpcaseTitle(dvdTitle.GetTitle(), med)
}       

func (this *DvdUpcaseTitle) GetTitle() string {
   return this.title
}

func (this *DvdUpcaseTitle) SetTitle(titleIn string) {
   this.title = titleIn
}

   
func (this *DvdUpcaseTitle) ResetTitle() {
	 this.setUpcaseTitle( strings.ToUpper(this.GetTitle()) )
}

func (this *DvdUpcaseTitle) ResetTitleWithString (title string) {
	 this.SetTitle(title)
	 this.ResetTitle()
}    
   
func (this *DvdUpcaseTitle) SetSuperTitleUpcase() {
	 this.SetTitle(this.GetUpcaseTitle())
	 this.dvdMediator.ChangeUpTitle(this)
}
   
func (this *DvdUpcaseTitle) GetUpcaseTitle() string {
	return this.upcaseTitle
}

func (this *DvdUpcaseTitle) setUpcaseTitle(upcaseTitle string) {
    this.upcaseTitle = upcaseTitle
}
