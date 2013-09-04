package command

import (
	"strings"
)

//// Original copy of this content taken from http://www.fluffycat.com/Java-Design-Patterns/ in 2010
//// Original Author: Larry Truett
//// Privacy Policy at http://www.fluffycat.com/Privacy-Policy/
//Command (aka Action or Transaction) Overview
//An object encapsulates everything needed to execute a method in another object.

//DvdName - the Receiver

type DvdName struct {  
   titleName  string
}

func NewDvdName( titleName string ) *DvdName {
	return &DvdName{ titleName }
}
    
func (this *DvdName ) SetTitleName(titleNameIn string) {
	 this.titleName = titleNameIn
}
func (this *DvdName) GetTitleName() string {
	 return this.titleName
}

func (this *DvdName) SetNameStarsOn() {
	 this.SetTitleName( strings.Replace( this.GetTitleName()," ","*",-1))
}
func (this *DvdName) SetNameStarsOff() {
	 this.SetTitleName( strings.Replace( this.GetTitleName(),"*"," ",-1))
}   

func (this *DvdName) ToString() string {
	 return "DVD: " + this.GetTitleName()
}
