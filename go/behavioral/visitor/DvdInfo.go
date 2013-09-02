package visitor

import (
	"fmt"
)

type DvdInfo struct {  
	Title
   star , encodingRegion string
}
    
func NewDvdInfo(title string , star string, encodingRegion string) *DvdInfo {
	return &DvdInfo{ &TitleInfo{title}, star, encodingRegion}
}    
   
func (this *DvdInfo) Accept( tbv Visitor) {
	tbv.Visit(this)
}

func (this *DvdInfo) GetLongBlurb() string { 
	return fmt.Sprintf("LB-DVD: %s, starring %s, encoding region %s",
		this.GetTitle() , 
		this.star  , 
		this.encodingRegion)
}


func (this *DvdInfo) GetShortBlurb() string { 
	return fmt.Sprintf("SB-DVD: %s",
		this.GetTitle() )
}

